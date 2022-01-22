# Backend-devise-JWT

Code-along for setting up devise-JWT in rails application. 
Instructions are found [here](https://medium.com/ruby-daily/a-devise-jwt-tutorial-for-authenticating-users-in-ruby-on-rails-ca214898318e#id_token=eyJhbGciOiJSUzI1NiIsImtpZCI6ImNhMDA2MjBjNWFhN2JlOGNkMDNhNmYzYzY4NDA2ZTQ1ZTkzYjNjYWIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJuYmYiOjE2NDI3OTc3OTIsImF1ZCI6IjIxNjI5NjAzNTgzNC1rMWs2cWUwNjBzMnRwMmEyamFtNGxqZGNtczAwc3R0Zy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwNzUxOTMwMTkyMzQ5NDIwNzIzOCIsImVtYWlsIjoieml2a292aWNtaWxhbjE5ODdAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6IjIxNjI5NjAzNTgzNC1rMWs2cWUwNjBzMnRwMmEyamFtNGxqZGNtczAwc3R0Zy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsIm5hbWUiOiJNaWxhbiBaaXZrb3ZpYyIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHZ2pXd2hxOXktekQ3VTIzdjc4VWxQRENuNER4RDFzY0V4NUlXZ0g9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWlsYW4iLCJmYW1pbHlfbmFtZSI6IlppdmtvdmljIiwiaWF0IjoxNjQyNzk4MDkyLCJleHAiOjE2NDI4MDE2OTIsImp0aSI6IjkzZjUxYWM2Y2FjNmRhYmJhMDY0NGM0N2U2MmJmNGY4NzZkOTA4YzAifQ.KTR8LMWjnbPEx4rfXVzWuI1of5JOI9WqyE0xutbfi31_g2MxW9Sff6xhXWkxWomA0MVHBk7z9AYLqgeUFmFJJgDGEl9NH5Xts8IDFinQ8XmEcQ1dTc9vkM-GuYLZ8-fWNEHRRxrEngvuvvXhJhXaElcVzu612Z-PWd_tyk8lyxy7R4ZdHPqKajNsoC_yhKfgfAzBlcOi2pTBWWd9-xInFcBSK95pYZzfBeQHdgJQ-MapDMW-cC8whyS6W0KMScpVsuou49JuZh3ZtdMn7FCoIEOOoA2ZIChSsKDAVlucrjdVwn5C1qisQYP9aQQ3K1FkakXEeTKwrczCXaCMAxmtfg).
___

## My notes:
### commands and explanation: 


1. 
```
rails new devise-jwt-app -T -d postgresql --api
   ```
   `-T` no test files
   `-d` insted of using `database=postgresql` we use `-d postgresql`

2. 
```
gem 'devise'
gem 'devise-jwt'
gem 'rack-cors'
```
adding gems
`bundle install` instaling dependencies localy

3. enable `cors.rb`
   in `config/initializers/cors.rb`

``` 
origins '*'
   
```
4. setup devise generator:
   `rails g devise:install` 

5. 
    create user model:
   `rails g devise User`

   this is what our db schema looks like after 
   `rails db:create db:migrate`

   ```create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    ```


    If we need anything else as User model attributes we can run this: 

    `rails g devise User <new_attribute_1> <new_attribute_2>`

6. Create controller:

`rails g controller users/sessions_controller`

7. create new registration controller: 

` rails g controller users/registrations_controller`

8. create members_controller:

`rails g controller members_controller`


0fa2ff3d42fbba5182a24391f7751fe4d729d3c372faad144f7eb6bd1dcfc5cd2f1b3b981aea8165dce94b13522b6543b25af9dde29e3a72bd40687f461d10d2

