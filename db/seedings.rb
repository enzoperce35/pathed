require 'csv'

def languages
  Language.create(name: 'Javascript')
  Language.create(name: 'Html')
  Language.create(name: 'Ruby')
  Language.create(name: 'Rails')
  Language.create(name: 'Css')
end

def pages
  file = File.new('pages.csv', 'r')

  csv = CSV.new(file)
  
  csv.each do |row|
    page_informations = {
      content: row[1],
      name: row[2],
      link: row[3]
    }

    lang = Language.find_by(name: row[0])
    
    page = Page.create(page_informations)

    lang.pages << page
  end
end
