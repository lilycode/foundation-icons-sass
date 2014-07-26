module FoundationIcons
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'foundation-icons-sass.assets.precompile' do |app|
          app.config.assets.precompile += %w(
            foundation-icons.eot foundation-icons.svg
            foundation-icons.ttf foundation-icons.woff)
        end
      end
    end
  end
end
