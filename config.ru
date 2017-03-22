require_relative 'app'
require_relative 'my_assets'

map '/assets' do
  run MyAssets.environment Sinatra::Application.settings.root
end

run Sinatra::Application
