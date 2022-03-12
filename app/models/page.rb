class Page < ApplicationRecord
  has_and_belongs_to_many :languages

  validates_presence_of :name, :link, :content, on: [:create, :edit]
  validates_uniqueness_of :name, :link, on: [:create, :edit]
end
