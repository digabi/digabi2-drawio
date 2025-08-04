# digabi2-drawio

Dockerized drawio for digabi2, based on https://github.com/jgraph/drawio.git

## Development

```bash
# Pull in draw.io
just submodule-init

# Update draw.io to latest
just submodule-update

# Build image locally
just build

# Create development release
just dev-release <major/minor/patch/<semver>>

# Promote release to production
just prod-release
