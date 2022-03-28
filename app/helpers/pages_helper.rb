module PagesHelper
  def special
    case session_language['name']
    when 'Javascript'
      'function'
    when 'Ruby'
      'method'
    when 'Html'
      'tag'
    when 'Css'
      'attribute'
    end
  end
  
  def content_types
    [special, 'guide', 'quick-fix', 'sample', 'TOP lesson', 'workaround', 'cheat sheet', 'demo', 'insight', 'blog', 'vlog']
  end

  def backup_line(lang, page)
    lang.name + ',' + page.content + ',' + page.name + ',' + page.link
  end
end
