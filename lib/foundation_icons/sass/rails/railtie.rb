require "foundation_icons/sass/rails/helpers"

module FoundationIcons
  module Sass
    module Rails
      class Railtie < ::Rails::Railtie
       initializer "foundation-icons-sass.view_helpers" do
          ActionView::Base.send :include, ViewHelpers
        end
      end
    end
  end
end