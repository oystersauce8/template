### A rails app based on 6-0-stable@3d2bdc1149ce at [github.com/rails/rails](https://github.com/rails/rails) 

- **Authenticate** users with devise
- **Authorize** pages with [pundit](https://github.com/varvet/pundit)
- Easily merge in new rails versions :tada:
- Config **vars** using [heroku local](https://devcenter.heroku.com/articles/heroku-local)
- A **domain** and **ssl** for dev env - thanks to [gist](https://gist.github.com/tadast/9932075) :green_heart:
- Linting with **rubocop**
- **Google Analytics** setup
- Latest **bootstrap**
- Icon fonts
- A controller for static pages
- Setup for outgoing mail
- **React.js** and webpacker :sunglasses:
- Api ready and token authentication
- Example tests ( system tests, **unit tests**, integration tests) :thumbsup:
- **Minitest** installed :heavy_check_mark:
- Coverage metrics using **simplecov**
- [Rack::Timeout](https://github.com/heroku/rack-timeout) and [bullet](https://github.com/flyerhzm/bullet) for early warnings :fire:
- Frontend js errors sent to heroku logs

### Getting started
```
yarn install
bundle install
heroku local:run --env .env.dev bundle exec rails db:setup
# add a /etc/hosts entry pointing template-a32b218-dev.herokuapp.com to 127.0.0.1
heroku local -f Procfile.dev -e .env.dev
# Verify by visiting a page: https://cool-app-name-dev.herokuapp.com:5000/pages/test_bootstrap
```

### Prerequisites
```
ruby (version ?)
node (version ?)
yarn (version ?)
brew tap heroku/brew && brew install heroku
```


### Keeping up with the latest rails version
This application is a fork of [template-a32b218](https://github.com/oystersauce8/template-a32b218),
which happens to be generated using [create-rails-app](https://github.com/oystersauce8/create-rails-app)<br>
It's a good idea to sync up your rails application with whatever the latest stable version is out there.
Since the [parent application](https://github.com/oystersauce8/template-a32b218) is updated nightly,
we can acquire it's changes once a week like this:
```
git remote add upstream https://github.com/oystersauce8/template-a32b218.git
git fetch upstream
#git rebase upstream master or
git merge upstream/master or
```

### Some demo Pages

- https://template-a32b218.herokuapp.com/pages/test_bootstrap
- https://template-a32b218.herokuapp.com/pages/test_pundit
- https://template-a32b218.herokuapp.com/pages/test_iconfonts
- https://template-a32b218.herokuapp.com/pages/test_lib
- https://template-a32b218.herokuapp.com/pages/test_mail
- https://template-a32b218.herokuapp.com/pages/test_react
- https://template-a32b218.herokuapp.com/pages/test_authentication_1
- https://template-a32b218.herokuapp.com/pages/test_authentication_2
- https://template-a32b218.herokuapp.com/pages/test_api_1
- https://template-a32b218.herokuapp.com/pages/test_api_2
- https://template-a32b218.herokuapp.com/pages/test_api_3
- https://template-a32b218.herokuapp.com/pages/test_api_4

### License
(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

