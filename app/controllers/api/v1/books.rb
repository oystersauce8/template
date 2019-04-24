module API
  module V1
    class Books < Grape::API
      version 'v1' # path-based versioning by default
      format :json # We don't like xml anymore

      helpers do
        def grape_auth
          
          error!("401 Unauthorized", 401)
        end
      end

      resource :books do
        desc "Return list of books"
        get do
          Rails.logger.debug "DB8 current user was #{@current_user}"
          Rails.logger.debug "DB8 #{env['warden'].authenticated?}"
          grape_auth
          Book.all
        end
      end
    end
  end
end
