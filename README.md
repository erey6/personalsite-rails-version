# ericreyes.dev rails build

This portfolio Web site was built using:
* Ruby on Rails 7.0.1.
* Ruby 3.1.0

It employs a PostgreSQL database and active storage.
Each project is stored individually with a "has_many" relationship with the site links.
Active storage is used for the site screenshot and uses a "one-to-one" relationship via a "has_one_attached" mapping in the project model. 

