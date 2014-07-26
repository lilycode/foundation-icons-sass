# encoding: UTF-8

# @author Jan Lindblom
# @see https://github.com/FortAwesome/font-awesome-sass
module FoundationIcons
  # @author Jan Lindblom
  # @see https://github.com/FortAwesome/font-awesome-sass
  module Sass
    class << self
      # Load the contents of this gem!
      # 
      # This sets up the Rails engine, helpers and railtie if loaded in a Rails application
      # and/or registers a new Compass framework if loaded in a Compass application.
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

      # Return the path to where the gem is installed.
      # 
      # @return [String] expanded path to where the gem is installed.
      def gem_path
        @gem_path ||= File.expand_path('../..', File.dirname(__FILE__))
      end

      # Return the path to where the stylesheets are installed.
      # 
      # @return [String] expanded path to where the stylesheets are installed.
      def stylesheets_path
        File.join(assets_path, 'stylesheets')
      end

      # Return the path to where the font files are installed.
      # 
      # @return [String] expanded path to where the font files are installed.
      def fonts_path
        File.join(assets_path, 'fonts')
      end

      # Return the path to where the assets are installed.
      # 
      # @return [String] expanded path to where the assets are installed.
      def assets_path
        @assets_path ||= File.join(gem_path, 'vendor', 'assets')
      end

    end
  end
end

FoundationIcons::Sass.load!