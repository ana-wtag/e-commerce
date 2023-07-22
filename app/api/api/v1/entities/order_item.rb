module V1
  module Entities
    class OrderItem < Grape::Entity
      expose :id, :item_id, :quantity
    end
  end
end