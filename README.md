# Associations
Private Events [Project by Microverse] (Created by Sayyod Saidov)

# About Project
We are expected to build the site which allows users to create events and then manage user signups. Users can create events.

A user can create events. A user can attend many events. An event can be attended by many users.

## Built With

- Ruby 2.6.5
- Ruby on Rails 6.0.3.2
- GitHub Actions
- Rubocop 0.81.0
- Capybara
- Shoulda-matchers


# Getting Started

To get started, you should first get this file in your local machine by downloading this project or typing.
`
git clone https://github.com/MrSayyod/Private_events.git

## Prerequisites
    Ruby installed on local machine
    Ruby on Rails installed on local machine
    Text editor (preferably: VSCode, Atom, Sublime)
    Git

## Setup
   If you have installed `Ruby` and `Ruby on Rails` on your machine:
   1. Clone the project into your local machine using `git clone` command or download the zip file.
   2. Go into the project directory using `cd directory name` command.
   3. Run the bundler using `bundle` or `bundle install` command
   4. Run `rails server`.
   5. From your default browser go to the http://localhost:3000/
   6. EXTRA: If you are developer you can test it in the Rails console using `rails console` command.

   ### Testing
   1. From terminal run `rails generate rspec:install` command.
   2. Add `shoulda-matchers` gem into Gemfile. Gem should be inside of `group :test`(test environment).
   3. Run the bundler using `bundle` or `bundle install` command
   4. Then add code below at the end of rails_helper.rb

    Shoulda::Matchers.configure do |config|
      config.integrate do |with|
        with.test_framework :rspec
        with.library :rails
      end
    end
 

# Contributing

:handshake: Contributions, issues and feature requests are welcome! 
Start by:

    1. Forking the project
    2. Cloning the project to your local machine
    3. cd into the project directory
    4. Run git checkout -b your-branch-name
    5. Make your contributions
    6. Push your branch up to your forked repository
    7. Open a Pull Request with a detailed description to the development branch of the original project for a review

Please feel free to contribute to any of these!

Feel free to check the [issues page](https://github.com/MrSayyod/Private_events/issues).

# 👤 Author

## :man_technologist: Sayyod Saidov

- Email: ssayyod@gmail.com
- Github: [@MrSayyod](https://github.com/MrSayyod) 
- LinkedIn:  [Sayyod Saidov](https://www.linkedin.com/in/sayyod-saidov-507b0818b)
- Twitter: [Sayyod Saidov](https://twitter.com/sayyodsaidov)
- Facebook: [Sayyod Saidov](https://www.facebook.com/sayyod)

## Show your support
Give a :star2: if you like this project!

## Acknowledgements

> - [Microverse](https://www.microverse.org/)
> - [The Odin Project](https://www.theodinproject.com/home)
> - [Rubocop](https://docs.rubocop.org/en/stable/)
> - [Capybara](https://github.com/teamcapybara/capybara)
> - [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)

## 📝 License
This project is MiT licensed.

