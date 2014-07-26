# FoundationIcons::Sass

Foundation icons for your SASS project!

This gem is based heavily on the [FontAwesome SASS gem](https://github.com/FortAwesome/font-awesome-sass), especially the rails engine, helper and railtie which are pretty much just straight up forked from there.

## Installation

Add this line to your application's Gemfile:

  ```ruby
  gem 'foundation-icons-sass'
  ```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foundation-icons-sass

## Usage

If you use Rails add this to e.g. application.css.scss:

    *= require foundation-icons

With Compass, just do:

    @import foundation-icons

With Jekyll, you can use it with jekyll-assets by putting this in your `_plugins/ext.rb`:

  ```ruby
  require 'jekyll-assets/foundation-icons'
  ```

and then this in your `whatever.sass`:

    @import foundation-icons

Then you can use the icons as such:

  ```html
  <i class="fi-social-github"></i>
  ```

## Rails Helper usage

In your view:

  ```ruby
  icon('flag')
  # => <i class="fi-flag"></i>
  ```

  ```ruby
  icon('flag', '', class: 'strong')
  # => <i class="fi-flag strong"></i>
  ```

  ```ruby
  icon('flag', 'Foundation Icon', id: 'my-icon', class: 'strong')
  # => <i id="my-icon" class="fi-flag strong"></i> Font Awesome
  ```

Note: the icon helper can take a hash of options that will be passed to the content_tag helper.

## Contributing

1. Fork it ( https://github.com/lilycode/foundation-icons-sass/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
