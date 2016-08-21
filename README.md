# Email Events Webhook Catcher

A simple web app designed to receive incoming data from a transactional email API Webhook,
store it in a database, and display statistics.

### Usage

#### To run the server on your local machine:

 - Download or clone the repo
 - Run ```$ bundle install```
 - Create the database with ```$ rake db:create```
 - And migrate ```$ rake db:migrate```
 - Run ```$ rails s``` to start the server

The server will now accept incoming POST requests on:
 http://localhost:3000/events  

 with a payload in the format:  
 ```
 {"Address":"barney@test.com","EmailType":"Shipment","Event":"send","Timestamp":1432820696}
 ```

 To view the statistics for all the event received, visit the root path:
 http://localhost:3000

#### Deployed version:  
The latest version of the app has been deployed on Heroku, and it is available at this URL:

https://alterenzo-webhook.herokuapp.com/

POST requests can be sent at:

https://alterenzo-webhook.herokuapp.com/events

### Models

##### EmailType:

A new entry on this table is created every time a new email type is encountered.
It has a one to many relationship with the Events table.

The EmailType model also takes care of calculating the open and click rate for every type.

##### Event:

A new entry is created every time a new event is received.
Each entry stores an email address, event type, timestamp and a reference to an EmailType.

The Event model also has public methods to gather all the events for any event type.


### Test

RSpec is the testing framework used, with Capybara used to run the integration test.

Run tests using:
```
$ rspec
```
