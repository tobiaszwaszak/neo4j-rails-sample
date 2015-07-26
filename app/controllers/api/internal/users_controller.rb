module Api
  module Internal
    class UsersController < ApiController
      def index
        render json: User.all
      end
    end
  end
end
