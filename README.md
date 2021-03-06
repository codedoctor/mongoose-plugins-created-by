mongoose-plugins-created-by
===========================

npm install mongoose-plugins-created-by

Adds a createdBy field to a schema 

pluginCreatedBy = require "mongoose-plugins-created-by"
YourSchema.plugin pluginCreatedBy.createdBy, isRequired : true

## Release Notes

### 0.4.0
* Changes in the infrastructure (grunt)
* Simplified data model - after using the old one for two years it turns out that it was completely useless.

### 0.2.0
* First version

## Stuff

npm test
npm run-script docs

node_modules/.bin/grunt                   # Starts the watch & test run
node_modules/.bin/grunt coffee            # Compiles the coffeescript

node_modules/.bin/grunt release
node_modules/.bin/grunt release:minor
node_modules/.bin/grunt release:major



## Contributing to mongoose-plugins-created-by
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the package.json, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Martin Wawrusch See LICENSE for
further details.


