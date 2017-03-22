require File.expand_path '../app', __FILE__
require File.expand_path '../my_assets', __FILE__

map '/assets' do
  run MyAssets.environment Sinatra::Application.settings.root
end

run Sinatra::Application
