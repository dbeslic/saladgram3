class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :connections, :dependent => :destroy

# "Through" methodology as discussed with Gustavo
  has_many :groups, :through => :connections, :source => :chat
  has_many :followers, :through => :follows, :source => :user

  has_many :follows, :dependent => :destroy
  has_many :saladgrams, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :shoutouts, :dependent => :destroy

end
