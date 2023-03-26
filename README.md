# SharkBait 🦈

Table of Contents
  <ol>
    <li><a href="#about">About</a></li>
    <li><a href="#the-app-in-use">The App In Use</a></li>
    <li><a href="#how-to-install-and-run-on-your-local-machine">How to Install and Run SharkBait</a></li>
    <li><a href="#credits">Credits</a></li>
  </ol>

## About
<p>SharkBait is a marketplace to rent a shark, you can list your shark or find yourself a new friend!</p>
<p>Just to let you know, we don't deal with deliveries.</p>
<p>Visit the website online:</p>
https://sharkbait-hey24.herokuapp.com



## The App in Use
1. The Home screen 

![SharkBait-home](https://user-images.githubusercontent.com/84138514/227789569-f79d5c5c-67f2-4319-b064-ee515caad893.gif)

<br>
2. You can view the listings, make a booking, view the reviews and and see your bookings

![SharkBait-rental](https://user-images.githubusercontent.com/84138514/227790175-867921e0-1790-4d6d-b777-89c55caba4d6.gif)

<br>

## How to Install and Run on Your Local Machine

N.B All `$` refer to terminal commands

1. Make sure you have yarn and rails intalled on your machine by checking the current version:
```
$ yarn -v
$ rails --version
```
If yarn is not installed use the following command to install it:
```
$ npm install --global yarn
```
Follow the same process if you do not have rails installed:
```
$ gem install rails
```
If this has not worked, please refer to the docs<br><br>

2. Install all the dependencies - Need to install the ruby gems from the gemfile and the dependencies from package.json
```
$ bundle install && yarn install
```
3. To create the database and utilise our current seed data, use the following command:
```
$ rails db:create db:migrate db:seed
```

4. Launch a rails server and yarn
```
$ bin/dev
```
5. See the app, up and running on your [localhost](http://localhost:3000/)!

## Credits 

This project couldn't have been made without our amazing team ❤️
* Luke Sherman
  * [GitHub](https://github.com/lwsherman123)
* Linnéa Jonsson
  * [GitHub](https://github.com/Linnea-Jonsson)
* Camille Laporte
  * [GitHub](https://github.com/CLaport)
* Ben Heyman
  * [GitHub](https://github.com/hey24)
* Malak Hasanova
  * [GitHub](https://github.com/MalakHasanova)
