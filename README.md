# README

```
git clone https://github.com/oystersauce8/template-a32b218.git
mv template-a32b218 cool-app-name
cd cool-app-name
perl -pi.bak -e 's/template-a32b218/cool-app-name/' .env.dev
yarn install
bundle install
heroku local -f Procfile.dev -e .env.dev
```
