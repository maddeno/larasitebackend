# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

ruby 2.6.1p3, 
rails 6.0., 6.0.2.2
actionmailer 6.0, 6.0.2.2
bcrypt 3.1.7
jwt 2.2

This is the back-end for a musician's professional website. I created a relational database that instances of gigs and lessons; these are created based on user input on the frond-end. Gigs and lessons are instantiated with a status attribute set to "requested". The database also stores login data for the site admin (the musician).

When a new gig or lesson is created, ActionMailer relays the details of the booking to the musician's inbox. The email they receive includes a link back to the app, specifically a login page. Upon logging in the admin can update the status of gigs and lessons to "accepted" or "declined".

Front-end users booking gigs have the option to instantiate their gig as "public". If a gig is both marked "public" by the client and "accepted" by the musician, then the details of that gig will be appear in the "Upcoming Performance Calendar" component on the front-end. 

To start, run 'rails s' to start the back-end server. In another terminal run 'npm start'. You may be prompted with "Something is running on port 3000. Would you like to run the app on another port instead?" Enter 'y' for yes. 
