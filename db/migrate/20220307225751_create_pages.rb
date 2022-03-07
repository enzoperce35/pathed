class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :name, null: false
      t.string :link, null: false
      t.text :tags, array: true, default: [], null: false
      t.belongs_to :language

      t.timestamps
    end
  end
end
