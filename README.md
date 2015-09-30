# Lingo

Current play stack

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

## Setup client

Go [https://github.com/brancusi/lingo-client](https://github.com/brancusi/lingo-client) for more details

### Install [ember-cli](http://www.ember-cli.com/)
```bash
npm install -g ember-cli
```

```bash
cd client

npm install

bower install
```

### Start ember

```bash
ember s
```

In one browser tab, navigate to [localhost:4200/chats/myroom](http://localhost:4200/chats/myroom)
In a second browser tab, navigate to [localhost:4200/chats/myroom](http://localhost:4200/chats/myroom)

*See how fly you are*
