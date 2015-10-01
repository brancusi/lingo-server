# Lingo - Server

### Lingo(working title) aims to help teachers and students learning foreign language by using new advances in webRTC to create helpful virtual classroom tools.

This repo is for the server component of *Lingo*

If you are looking for the web client please visit: [https://github.com/brancusi/lingo-client](https://github.com/brancusi/lingo-client)

Current stack

1. Tokbox
1. Rails
1. React
1. Ember
1. Firebase

## Setup server

### Install [rbenv](https://github.com/sstephenson/rbenv)

```bash
git clone git@github.com:brancusi/lingo-server.git

cd lingo-server

bundle

rake db:create db:migrate
```

### Signup for a trial account at [talkbox](http://tokbox.com)

Setup your local environment variables
```bash
cp .env_template .env
```
### Open the project in your favorite editor

Edit the .env file with your credentials found in your opentalk dashboard

```ruby
OT_API_KEY=YOUR_API_KEY
OT_API_SECRET=YOUR_API_SECRET
```

### Start rails
```bash
rails s
```
