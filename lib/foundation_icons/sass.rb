require "foundation_icons/sass/version"

module FoundationIcons
  module Sass
    class << self
      
      def load!
        if defined?(::Rails)
          require 'sass-rails'
          require 'foundation_icons/sass/rails/engine'
          require 'foundation_icons/sass/rails/railtie'
        end

        if defined?(::Compass)
          ::Compass::Frameworks.register(
            'foundation-icons',
            path: gem_path,
            stylesheets_directory: stylesheets_path,
            templates_directory: File.join(gem_path, 'templates')
          )
        end
      end

      def gem_path
        @gem_path ||= File.expand_path('../..', File.dirname(__FILE__))
      end

      def stylesheets_path
        File.join(assets_path, 'stylesheets')
      end

      def fonts_path
        File.join(assets_path, 'fonts')
      end

      def assets_path
        @assets_path ||= File.join(gem_path, 'vendor', 'assets')
      end

    end
  end
end

FoundationIcons::Sass.load!