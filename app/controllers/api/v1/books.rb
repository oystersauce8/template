module API
  module V1
    class Books < Grape::API


      before do
        if request.headers["Authorization"].present?
          user = User.find_by_token(request.headers["Authorization"]) rescue nil
        end
        env['warden'].set_user(user, :store => false) if user
      end

      helpers Pundit

      helpers do
        # is this used
        def current_user
          nil # your authentication mechanism
        end
      end

      version 'v1' # path-based versioning by default
      format :json # We don't like xml anymore

      helpers do
        # is this used
        def grape_auth
          error!("401 Unauthorized", 401)
        end
      end

      resource :books do
        desc "Return list of books"
        get do
          Rails.logger.debug "DB8 current user was #{@current_user}"
          Rails.logger.debug "DB8 #{env['warden'].user.id}" rescue ""
          BookPolicy::Scope.new(env["warden"]&.user, Book).resolve.select(:id, :published_at)
        end
      end
    end
  end
end
