require 'sprockets'

module MyAssets
  def self.environment root_path
    environment = Sprockets::Environment.new root_path
    environment.append_path 'assets'
    environment.js_compressor  = :uglify
    environment.css_compressor = :scss
    environment
  end
end
