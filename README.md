# README

## Genesis (How this application was born)

```
git clone https://github.com/oystersauce8/template-a32b218.git
mv template-a32b218 cool-app-name
cd cool-app-name
perl -pi.bak -e 's/template-a32b218/cool-app-name/' .env.dev
```

## How to start local development instance
```
yarn install
bundle install
heroku local:run --env .env.dev rails db:setup
heroku local -f Procfile.dev -e .env.dev
```

## How not to get out of date with upstream rails edge

```
# https://help.github.com/en/articles/syncing-a-fork
git remote remove upstream
git remote add upstream https://github.com/oystersauce8/template-a32b218.git
git fetch upstream
git rebase upstream master # Or git merge upstream/master
```
