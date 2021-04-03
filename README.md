# Covidliste

Covidliste makes it easy to manage waiting lists for vaccination centers.

[https://www.covidliste.com](https://www.covidliste.com)

<img src='https://www.pasteur.fr/sites/default/files/styles/media-wide/public/rubrique_linstitut_pasteur/notre_histoire/alexandre-yersin-institutpasteur_46576.jpg?itok=FL2T1kf4' width='200px'> </img>

# Stack

- Ruby on Rails
- Postgresql

# Local Development

## Installation

### Prerequisites

If you don't already have them :

- Install ruby 2.6.6 `rbenv install 2.6.6 && rbenv global 2.6.6`
- Install bundler 2.1.4 `gem install bundler:2.1.4`
- Install yarn `npm i -g yarn`

### Dependencies

Setup the project's dependencies :

```bash
bundle install
yarn
```

### Database

1. Create a database called `covidliste_development` using your favorite postgresql GUI or CLI.
2. Then run the migrations : `bin/rails db:migrate RAILS_ENV=development`

### Running

Run :

```bash
bin/rails server
```

# To Contribute

[Todo]
