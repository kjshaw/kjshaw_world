class Article < ActiveRecord::Base

  belongs_to :category

  validate_presence_of :title
  validate_presence_of :content

  scope :alphabetical, order('title')
  scope :active, where('active = 1')

end
