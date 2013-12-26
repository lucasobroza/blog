class User < ActiveRecord::Base
	attr_accessible :name, :email, :active, :account_ids
	has_and_belongs_to_many :accounts


end

