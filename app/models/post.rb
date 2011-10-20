class Post < ActiveRecord::Base
  
  belongs_to :user
  has_many :tags
  has_many :comments
  
  #presence
  validates_presence_of :title, :postcontent, :user_id, :type => true
  
  
end
