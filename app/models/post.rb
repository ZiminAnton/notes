class Post < ActiveRecord::Base
  attr_accessible :title, :description, :user_id, :category_id
  belongs_to :category
  validates :title, :description, :category_id, :presence => true
end
