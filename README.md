# heroku-docker

An example of flask app for deployment to [Heroku using Docker](https://devcenter.heroku.com/articles/container-registry-and-runtime). The "Heroku" specifics here are 1. loading the port from the environment (`$PORT`) and 2. [dying on `SIGTERM`](https://devcenter.heroku.com/articles/dynos#graceful-shutdown-with-sigterm).

## Deployment
Build as normal:
```
$ docker build registry.heroku.com/<app>/<process-type> .
```
and then push to registry:
```
$ docker push registry.heroku.com/<app>/<process-type>
```
and then release:
```
$ heroku container:release <process-type> --app <app>
```

`process-type` above would be e.g. `web`.
