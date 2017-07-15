# Welcome To Demo Chat Application

This chat application is an assignment developed for recruitment purposes. 

This Application covers following tasks. 
 * There are two clients: users and trainers.
 * Each of these has the ability to log into the website through authentication.
 * Once signed in, they can see in the front page and the button ‘chat' showing up.
 * Clicking on chat you see all the messages in which the logged client is involved.
 * Then, you can click over ‘New chat’ and you are given a form to send a new message.
 * In the form you have to select the receiver (either a user or a trainer).
 * Editing and deleting messages isn’t allowed.
 * You can create an admin user if you want to make these operations.

# Setup
This is very simple application. So, There is no special setup is required. We can setup this application as we setup normal rails application.
 
** This application built using Rails 5 and Ruby 2.4.0 

** prerequisite: PostgreSQL 

1. Clone Application:

``git clone git@github.com:asad-ali-bhatti/chat_app.git``

2. Go into application folder and install bundler

``cd chat_app``

``gem install bundler``

3. Now install gems (as gemset already created using rvm)

``bundle install``

4. Create database and setup it. 

``rake db:create``

``rake db:setup``


5. Yheeeyy! finally we are ready to launch.

``rails s``

