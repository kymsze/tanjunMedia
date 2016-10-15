require File.expand_path '../app', __FILE__
require File.expand_path '../my_assets', __FILE__

unless ENV['RACK_ENV'] == 'production'
  map '/assets' do
    run MyAssets.environment Sinatra::Application.settings.root
  end
end

run Sinatra::Application
