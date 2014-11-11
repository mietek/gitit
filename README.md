_gitit_
=======

Haskell/[Happstack](http://happstack.com/) web wiki.


Usage
-----

Check the [original README](https://github.com/mietek/gitit/blob/halcyon/README.original.md) for more information.


### Deploying with [Halcyon](http://halcyon.sh/)

With Halcyon installed:

```
$ halcyon deploy https://github.com/mietek/gitit#halcyon
$ cd $HALCYON_DIR/app
$ gitit -p 8080
```

- [Learn more](http://halcyon.sh/examples/#gitit.net)


### Deploying with [Haskell on Heroku](http://haskellonheroku.com/)

Ready to deploy to Heroku in two clicks.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/mietek/gitit/tree/halcyon/)

Alternatively, with Heroku Toolbelt installed:

```
$ git clone https://github.com/mietek/gitit -b halcyon
$ cd gitit
$ heroku create -b https://github.com/mietek/haskell-on-heroku -s cedar-14
$ heroku config:set GITIT_GIT_USER_EMAIL=...
$ heroku config:set GITIT_GIT_USER_NAME=...
$ heroku config:set GITIT_GIT_URL=...
$ git push heroku master
$ heroku ps:scale web=1
$ heroku open
```

- [Deploy to Heroku](https://heroku.com/deploy?template=https://github.com/mietek/gitit/tree/halcyon/)
- [Learn more](http://haskellonheroku.com/examples/#gitit.net)


About
-----

Made by [John MacFarlane](https://github.com/jgm/gitit/).  Published under the [GNU GPL](https://github.com/mietek/gitit/blob/halcyon/LICENSE).

Deployment by [Miëtek Bak](http://mietek.io/).
