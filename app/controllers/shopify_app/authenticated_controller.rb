# frozen_string_literal: true
module ShopifyApp
  class AuthenticatedController < ActionController::Base
    include ShopifyApp::Authenticated

    protect_from_forgery with: :exception, unless: :valid_jwt_header?

    private

    def valid_jwt_header?
      jwt_shopify_domain.present?
    end
  end
end
