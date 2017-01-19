# Deployment

1. Generate a release
`REPLACE_OS_VARS=true MIX_ENV=prod mix release`

2. Add the following evars:
* `REPLACE_OS_VARS=true`
* `SECRET=some_random_string`
* `PORT=8080`

2. Deploy the app to production
* `nanobox deploy`