# README

"This is the finance tracker app from the Complete Ruby on Rails Developer course"
In your gemfile, add the devise gem:

gem 'devise'

Then run:

bundle install --without production

Then install devise in your application:

rails generate devise:install

rails generate devise User

rake db:migrate to add users table

Add the following line to the application_controller.rb file under app/controllers:

before_action :authenticate_user!

Add a logout link to the homepage which is the index.html.erb view under app/views/welcome folder:

<%= link_to "logout", destroy_user_session_path, method: :delete %>

Add gem 'twitter-bootstrap-rails' in your gemfile and bundle install --without production

If using Rails 5, also add gem 'jquery-rails' under gem 'twitter-bootstrap-rails', then run bundle install

Then run the following commands:

rails generate bootstrap:install static

rails g bootstrap:layout application

override using Y

Then add <!-- gem 'devise-bootstrap-views' --> in your gemfile and bundle install --without production

Under your app/assets/stylesheets folder, add the following line to your application.css file above the *= require_tree . line:

<!-- *= require devise_bootstrap_views -->

If using Rails 5, go over to your app/assets/javascripts/application.js file and add the following two lines:

<!-- //= require jquery
//= require twitter/bootstrap
 -->
Under the line that say <!-- //= require rails-ujs -->

Then run the following two commands from the terminal:

rails g devise:views:locale en

rails g devise:views:bootstrap_templates
 # for create a friend
 rails c >> user = User.find()
 		 >>user.friends
 		 >>user.friends << user
# for friendship 
rails c >> User.find(3)
		>>@user=User.find(3)
		>>@user
		>>@user.friendships.build(friend_id: @user.id)
		>> Friendship.all