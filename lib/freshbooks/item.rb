module FreshBooks
  class Item < FreshBooks::Base
    define_schema do |s|
      s.fixnum :item_id, :quantity, :inventory
      s.float :unit_cost
      s.string :name, :description, :folder
    end

    actions :create, :update, :get, :delete, :list
  end
end
