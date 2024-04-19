# drawio
Dockerized drawio

## Development

Run the following commands to initialize the development environment and to build and run the app container.

```
git submodule init
git submodule update
npm run docker:build
npm run docker:run
```

## Release

To release a development version, run `./release.sh <major|minor|patch|<semver>>`. This builds and pushes a new image to the private ECR.

To promote a development version to production (i.e. publish a private image to the public ECR), run `./release.sh` which lets you select the image tag you wish to promote. This also generates a Github release.