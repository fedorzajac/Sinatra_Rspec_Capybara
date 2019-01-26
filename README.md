# Sinatra with Rspec and Capybara

I have created simple sinatra setup.

## initial instalation and configuration

### terminal

```bash
$ bundle init
# This will create Gemfile. Open it with editor and fill in rspec and capybara
$ bundle
$ rspec --init # this will create the spec dir
# After all files are created:
$ rspec
.

Finished in 0.03381 seconds (files took 0.66163 seconds to load)
1 example, 0 failures
# and of course:
$ git add .
$ git commit -m "initial working commit"
$ git push origin master
```

### Gemfile
```ruby
gem 'sinatra'

group :test do
  gem 'rspec'
  gem 'capybara'
end
```

config.ru
```ruby
require './main'
run Sinatra::Application
```
main.rb
```ruby
require 'sinatra'

get '/' do
  'hello'
end
```
spec/spec_helper.rb
```ruby
require 'sinatra'
require 'capybara/rspec'
```
spec/features/user_visits_root_spec.rb
```ruby
require 'spec_helper'

Capybara.app = Sinatra::Application

feature 'main page' do
   scenario 'user sees hello' do
    visit '/'
    expect(page).to have_content 'Hello'
   end
end
```
