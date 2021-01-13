# whitelabel-backend-challenge

## Ruby on Rails 

Created a `Wrapper Controller` to handle `GET` requests to `#index`. `#index` calls on `#wrap`, passing it an input_string and column_number as query params. `#wrap` takes the `input_string` and wraps sentences according to `column_number`, only breaking lines at spaces if possible. 

### How to run
1. Clone the repo down to local machine and cd into project directory
2. Run `bundle install` in the terminal to install gems
3. You can run the built in tests by typing `rspec` into the terminal 
4. You can also run `rails s` and open your browser to localhost:3000
5. To test the wrap function navigate to `localhost:3000/wrapper?string=<your string here>&column_number=<column where you want to wrap(integer)>`, this should return the input_string wrapped correctly. 
  
  
