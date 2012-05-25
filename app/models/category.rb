class Category < ActiveRecord::Base
  attr_accessible :name, :subcategory_id
  belongs_to :user
end
