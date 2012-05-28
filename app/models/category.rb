class Category < ActiveRecord::Base
  attr_accessible :name, :subcategory_id
  belongs_to :user
  has_many :posts
  scope :first_level, where(:subcategory_id => nil)
  scope :subcategory_for, lambda { |category_id| where("subcategory_id = ?", category_id ) }
end
