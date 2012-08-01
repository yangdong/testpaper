class Paper < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name
  validates :name, :uniqueness => true
end
