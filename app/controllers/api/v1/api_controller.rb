module Api::V1
  class ApiController < ApplicationController
    skip_before_action :verify_authenticity_token, if: :json_request?
    protect_from_forgery prepend: true

    private

    def json_request?
      request.format.json?
    end
  end
end