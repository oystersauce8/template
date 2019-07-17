
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

### Getting started
```
yarn install
bundle install
heroku local:run --env .env.dev bundle exec rails db:setup
# add a /etc/hosts entry pointing template-a32b218-dev.herokuapp.com to 127.0.0.1
heroku local -f Procfile.dev -e .env.dev
# Verify by visiting a page: https://cool-app-name-dev.herokuapp.com:5000/pages/test_bootstrap
```

### Prereqs
```
ruby
node
yarn
brew tap heroku/brew && brew install heroku
```


### Keeping up with the latest rails version
```
# https://help.github.com/en/articles/syncing-a-fork
git remote remove upstream
git remote add upstream https://github.com/oystersauce8/template-a32b218.git
git fetch upstream
git rebase upstream master # Or git merge upstream/master
```

<br>
<br>

Refer to the [parent repository](https://github.com/oystersauce8/create-rails-app) to find out how this application was generated.
