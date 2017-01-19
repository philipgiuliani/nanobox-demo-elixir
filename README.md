# Deployment

1. Generate a release with the following command `REPLACE_OS_VARS=true MIX_ENV=prod mix do compile, phoenix.digest, release`

2. You can test the app with the following command: `REPLACE_OS_VARS=true SECRET=test PORT=4000 release/bin/demo foreground`

3. Add the following evars on the production server:
    * `REPLACE_OS_VARS=true`
    * `SECRET=some_random_string`
    * `PORT=8080`

4. Deploy the app to production with `nanobox deploy`
