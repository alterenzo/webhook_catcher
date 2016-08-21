# Email Events Webhook Catcher

A simple web app designed to receive incoming data from a transactional email API Webhook,
store it in a database, and display statistics.

### Usage

 - Download or clone the repo
 - Run ```$ bundle install```
 - Run ```$ rails s``` to start the server on localhost

 The server will now accept incoming post requests on:
 http://localhost:3000/events  

 in the format:  
 ```{"Address":"barney@test.com","EmailType":"Shipment","Event":"send","Timestamp":1432820696}```

 To view the statistics for all the event received, visit the root path:  
 http://localhost:3000




This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
