module DisableAssetsLogger
  class Railtie < Rails::Railtie
    initializer "disable_assets_logger" do
      unless Rails.env.production?
        Rails.application.middleware.insert_before Rails::Rack::Logger, DisableAssetsLogger::Middleware
      end
    end
  end
end
