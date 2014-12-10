Spree User Ban
==============

Provides the ability to ban users in Spree.

Installation
------------

Just add this line to your Gemfile:

    gem "spree_user_ban", github: "ohuzhetotdima/spree-user-ban"

Then run `bundle install`. You'll also need to run the migrations with

    bundle exec rake railties:install:migrations
    bundle exec rake db:migrate

And add the javascription to your project by adding the following to `all.js`:

    //= require spree/backend/spree_user_ban

You'll also want to add the styles by adding the following to `all.css`:

    *= require spree/backend/spree_user_ban

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 FreeRunning Technologies, released under the New BSD License
