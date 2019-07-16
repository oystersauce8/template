
- **Authenticate** users with devise  :tada:
- **TODO** list features


### Getting started
```
yarn install
bundle install
heroku local:run --env .env.dev bundle exec rails db:setup
# add a /etc/hosts entry pointing template-a32b218-dev.herokuapp.com to 127.0.0.1
heroku local -f Procfile.dev -e .env.dev
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
