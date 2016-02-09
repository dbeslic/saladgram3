class Chat < ActiveRecord::Base

  belongs_to :user
  has_many :saladgrams, :dependent => :destroy
  has_many :connections, :dependent => :destroy

  belongs_to :prize

  has_many  :participants, :through => :connections, :source => :user

# Has a prize?

end
