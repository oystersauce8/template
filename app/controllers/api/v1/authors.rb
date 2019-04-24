module API
  module V1
    class Authors < Grape::API
      version 'v1' # path-based versioning by default
      format :json # We don't like xml anymore

      resource :authors do
        desc "Return list of authors"
        get do
          Rails.logger.debug "DB8 env['warden'].authenticated? #{env["warden"].authenticated?}"
          Author.all.select(:id, :name)
        end
      end
    end
  end
end
