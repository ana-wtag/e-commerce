require 'doorkeeper/grape/helpers'

module V1
  module Resources
    class Items < Grape::API
      helpers Doorkeeper::Grape::Helpers
      format :json
      prefix :api
      version 'v1', :path

      before do
        doorkeeper_authorize!
        @current_user ||= User.find(doorkeeper_token[:resource_owner_id])
      end

      resource :items do
        desc 'Return all items'
        get do
          items = Item.all
          present items
        end
      end

      resource :items do
        desc 'Add new item'
        params do
          requires :name,
                   type: String
          requires :description,
                   type: String
          requires :price,
                   type: Integer
          requires :available_quantity,
                   type: Integer
        end
          post do
            item = Item.new(params)
            item.save!
            binding.pry
            present item, with: V1::Entities::Item
          end

      end 

      resource :items do
        desc 'Return specific item'
        get ':id' do
          items = Item.find(params[:id])
          present items, with: V1::Entities::Item
        end
      end
    end
  end
end