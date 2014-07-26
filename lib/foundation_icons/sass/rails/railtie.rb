# encoding: UTF-8

require "foundation_icons/sass/rails/helpers"

module FoundationIcons
  module Sass
    module Rails
      # @author Jan Lindblom
      # @see https://github.com/FortAwesome/font-awesome-sass
      class Railtie < ::Rails::Railtie
       initializer "foundation-icons-sass.view_helpers" do
          ActionView::Base.send :include, ViewHelpers
        end
      end
    end
  end
end