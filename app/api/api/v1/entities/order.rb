module V1
  module Entities
    class Order < Grape::Entity
      expose :id, :user_id, :total_price, :order_status
    end
  end
end