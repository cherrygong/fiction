class Book < ActiveRecord::Base

  has_many :authors, dependent: :destroy
  has_many :publishers

  accepts_nested_attributes_for :authors
end

