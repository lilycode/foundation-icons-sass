# encoding: UTF-8

module FoundationIcons
  module Sass
    # @author Jan Lindblom
    # @see https://github.com/FortAwesome/font-awesome-sass
    module Rails
      # @author Jan Lindblom
      # @see https://github.com/FortAwesome/font-awesome-sass
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
