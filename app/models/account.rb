class Account < ActiveRecord::Base
  attr_accessible :name, :company, :active, :user_ids
  has_and_belongs_to_many :users
end
