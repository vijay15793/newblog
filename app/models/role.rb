class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  attr_accessible :accounts_attributes
  attr_accessible :name,:role_ids
  scopify
end
