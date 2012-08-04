class Paper < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  validates :name, :uniqueness => true

  belongs_to :user, :foreign_key => :user_id
end
