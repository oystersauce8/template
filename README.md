
- **Authenticate** users with devise  :tada:
- **TODO** list more features


### Starting a local development instance
```
yarn install
bundle install
heroku local:run --env .env.dev rails db:setup
heroku local -f Procfile.dev -e .env.dev
```

## Keeping up with the rails master branch
```
# https://help.github.com/en/articles/syncing-a-fork
git remote remove upstream
git remote add upstream https://github.com/oystersauce8/template-a32b218.git
git fetch upstream
git rebase upstream master # Or git merge upstream/master
```

### How this application was created
```
git clone https://github.com/oystersauce8/template-a32b218.git
mv template-a32b218 cool-app-name
cd cool-app-name
perl -pi.bak -e 's/template-a32b218/cool-app-name/' .env.dev
```

