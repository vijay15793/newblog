class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :name, :title
 
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  has_many :comments, :dependent => :destroy
end
