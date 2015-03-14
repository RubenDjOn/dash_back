class Widget < ActiveRecord::Base
    has_many :user_widgets
    has_many :users, :through => :user_widgets
    serialize :config, JSON
end
