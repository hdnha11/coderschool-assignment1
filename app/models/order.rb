class Order < ActiveRecord::Base
  belongs_to :menu_item
end
