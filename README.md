# Starstruck

> The lady's starstruck, she's nothing but bad luck
> -- <cite>[Ronnie James Dio][1]</cite>

[1]:http://www.allmusic.com/song/starstruck-mt0036325813

# What

Show some :heart: to your fellow developers.

# How

```
$ curl -X POST -H 'Content-Type: application/json' http://starstruck.com/gkats/stars?access_token=AUTH_TOKEN
```

# I'm a dev and I want to play with this

1) Clone the repo.

2) Install ruby 2.2, bundler and postgresql.

3) It is recommended to create a postgresql user for the project.
```
$ psql -U postgres
```
```
create role starstruck with createdb superuser login password '123456';
```

4) Create a `config/database.yml`. You can find an example in `config/database.yml.example`.

5) `$ rake db:create && rake db:migrate && rake db:seed`