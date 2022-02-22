<h1><a href="https://github.com/FireboltCasters/Observatory"><img src="https://raw.githubusercontent.com/FireboltCasters/Observatory/main/logo.png" width="50" heigth="50" /></a><a href="https://github.com/FireboltCasters/Observatory">Observatory</a> - a docker-compose reloader for git projects</h1>

## About

A helper for restarting docker containers on github repo updates

Start --> Observe --> Reload

- Starts docker-compose
- Checks a git repository for updates
- Stops, pull ,rebuilds and restarts docker-compose


## Installation

**Observatory** uses [docker-compose](https://docs.docker.com/compose/install/) (docker-compose is required):

```console
git clone https://github.com/FireboltCasters/Observator
```

## Setup - Quick start

After the installation, you can set your variables and start using it.
Here are the most important variables to be configured in the ```.env``` file

```console
nano .env
```


```.env
#https://github.com/node-schedule/node-schedule#cron-style-scheduling
SCHEDULE_TIME_CHECK

#Client credentials
GIT_AUTH_USERNAME
GIT_AUTH_PERSONAL_ACCESS_TOKEN

#Repo informations
GIT_PROJECT_OWNER
GIT_PROJECT_REPO
GIT_BRANCH

#Full path to observing project (no relative paths)
FOLDER_PATH_TO_PROJECT
```


### GitLab

Missing documentation

### Proxy

Missing documentation


## Related packages

You might also want to take a look at [docker-github-reloader](https://github.com/FireboltCasters/docker-github-reloader), which is the base for this reloader.

## Contributors

The FireboltCasters

<a href="https://github.com/FireboltCasters/docker-github-reloader"><img src="https://contrib.rocks/image?repo=FireboltCasters/docker-github-reloader" alt="Contributors" /></a>
