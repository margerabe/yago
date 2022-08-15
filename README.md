<h1>About</h1>

Small Rails app enabling customers to request an insurance quote simlation based on user-submitted company information.

<h1>Running the project</h1>

This project runs on Ruby 3.0.3 / Rails 7.0.3 / PostgreSQL DB

- Clone this repo on your local drive
- Run `bundle install`
- Database: run `rails db:drop` `rails db:create` `rails db:migrate` 
- You possibly might need to add Bootstrap and its dependencies: `yarn add bootstrap @popperjs/core`
- Launch the development server with `bin/rails server` and navigate to http://localhost:3000
- Fully tested with Rspec
- Linted with Rubocop (offense-free)
