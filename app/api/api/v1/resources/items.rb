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
    end
  end
end