module API
  module V1
    class Authors < Grape::API
      #helpers Pundit

      version 'v1' # path-based versioning by default
      format :json # We don't like xml anymore

      resource :authors do
        desc "Return list of authors"
        get do
          Rails.logger.debug "DB8 env['warden'].authenticated? #{env["warden"].authenticated?}"
          Rails.logger.debug "DB8 #{@current_user}"
          Rails.logger.debug "DB8 #{env['warden'].user.id}" rescue ""
          AuthorPolicy::Scope.new(env["warden"].user, Author).resolve.pluck(:id, :name)
        end
      end
    end
  end
end
