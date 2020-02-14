# README

Pet project for kanban board to get to know Ruby on Rails framework.
Uses Ruby on Rails 6, with Bootstrap 4 and jquery.

## Useful commands
* To install all ruby dependencies run:
`bundle install`

* To install webpacker managed dependencies:
`rake assets:precompile`

* To init/recreate database:
`rake db:drop && rake db:create && rake db:migrate`
Also `rake db:seed` to execute seeds ruby module, which is executed as part of
`rake db:setup` task. Migration is required in case of any changes to the schema.

* To init db with test data:
`rake db:fixtures:load`

* Precompile javascript and oter assets:
`rake assets:precompile` (this is done automatically on the page refresh)

* To run app:
`rails server`

## Further steps
1. Adding and editing cards functionality
2. Websockets to update dashboard for all the users being connected
3. Import of the tickets from other trakers (redmine, jira, etc.)
4. Authentication with permissions
5. Packaging for ease of deployment
