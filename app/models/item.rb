class Item < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :images, class_name: 'ItemImage'

  monetize :price_cents

  accepts_nested_attributes_for :images
  belongs_to :owner, class_name: 'User'
  belongs_to :borrower, class_name: 'User'
end
