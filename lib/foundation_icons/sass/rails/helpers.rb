module FoundationIcons
  module Sass
    module Rails
      module ViewHelpers
        # Insert an icon into your view
        # 
        # @param
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