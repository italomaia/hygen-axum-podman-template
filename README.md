# Hygen-Axum-Podman-Template

**[deprecation-warning]** this project will no longer receive updates; refer to [cookiecutter-axum-podman](https://github.com/italomaia/cookiecutter-axum-podman) for the maintained version.  

This is a project template for people interested quickstarting with [axum](https://github.com/tokio-rs/axum?tab=readme-ov-file).

## Why Use This Template?

## Getting Started

Be sure you have the following installed:

- https://nodejs.org/en
- https://podman.io/ (and podman-compose)
- https://pypi.org/project/hygen-add/

Now, create an empty project folder and type the following:

```bash
# copies the template from remote
hygen-add https://github.com/italomaia/hygen-axum-podman-template
# parses the template into your project
npx hygen axum-podman init
# gets your application running
make srv-up srv-wlogs crate=example
```

Open http://localhost:8080/ to see your [axum](https://github.com/tokio-rs/axum) hello world running!