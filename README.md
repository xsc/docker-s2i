# docker-s2i

This image is intended to be used in CI pipelines that want to leverage
[source-to-image][s2i] to remove the need for a dedicated `Dockerfile`.
It provides the following tools:

- [`docker`][docker]
- [`git`][git]
- [`s2i`][s2i]

[docker]: https://www.docker.com/
[git]: https://git-scm.com/
[s2i]: https://github.com/openshift/source-to-image

Build the image and push it to the registry of your choice.
