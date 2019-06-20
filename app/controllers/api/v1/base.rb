# :nocov:
module API
  module V1
    class Base < Grape::API
      mount API::V1::Authors
      mount API::V1::Books
    end
  end
end
# :nocov:
