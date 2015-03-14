class User < ActiveRecord::Base
  has_many :user_widgets
  has_many :widgets, :through => :user_widgets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
