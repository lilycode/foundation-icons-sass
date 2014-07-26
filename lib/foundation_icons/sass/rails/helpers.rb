# encoding: UTF-8

module FoundationIcons
  module Sass
    module Rails
      # @author Jan Lindblom
      # @see https://github.com/FortAwesome/font-awesome-sass
      module ViewHelpers
        # Insert an icon into a view.
        # 
        # @param [String] icon the icon to include.
        # @param [String] text optional text to follow the icon.
        # @param [Hash] html_options optional hash with options to pass to content_tag.
        # @return [String] the html_safe output.
        def icon(icon, text="", html_options={})
          content_class = "fi-#{icon}"
          content_class << " #{html_options[:class]}" if html_options.key?(:class)
          html_options[:class] = content_class

          html = content_tag(:i, nil, html_options)
          html << " #{text}" unless text.blank?
          html.html_safe
        end
      end
    end
  end
end