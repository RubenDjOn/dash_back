class Widget < ActiveRecord::Base
    serialize :config, JSON
end
