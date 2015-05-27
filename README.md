# Arkis Documentation

**Arkis** documentation is available online [here](http://42thlab.github.io/arkis-docs/).

This documentation is written using
[Markdown](https://guides.github.com/features/mastering-markdown/).

## Hack

To hack on this documentation, you can directly use any markdown editor of
your choice (including directly editing the file on GitHub).

This documentation is built using [MkDocs](http://www.mkdocs.org/).

If you want to preview a live version of this documentation, all you need
is [Docker](http://www.docker.com) and [Make](http://www.gnu.org/software/make/).

### Run the documentation server inside a container

    make

### Clean the container

    make clean

### Rebuild and restart the documentation server

    make re

### Run a live reload development environment

    make dev

### Open a shell in this development environment

    CMD=/bin/bash make dev

The documentation should be running on your Docker host and available at:

    http://$(your-docker-ip):$PORT

You can run the documentation server on another port of your Docker host
by specifying the environment variable `PORT` (default: `8000`).

### Deploy the application on [GitHub Pages](https://pages.github.com/)

    make deploy

>**Caution!** You need push access to the targeted repository to deploy this
documentation. The path `$HOME/.ssh` is mounted inside the container with
a volume for that purpose.

## Contributing

See the contributing [guidelines](/contributing).

## Licensing
arkis-docs is licensed under the MIT License. See [LICENSE](/license) for
full license text.
