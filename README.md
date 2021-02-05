[![Build Status](https://github.com/emazzotta/docker-git-crypt/workflows/Docker%20Build%20&%20Push/badge.svg)](https://github.com/emazzotta/docker-git-crypt/actions)
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat)](https://emanuelemazzotta.com/mit-license)

# Docker Git-Crypt

Simple alpine git-crypt docker container

## Usage

```bash
# To unlock repository
docker run -ti --rm -v <my_git_crypt_repo_dir>:/src -w /src emazzotta/docker-git-crypt unlock
```

## Author

[Emanuele Mazzotta](mailto:hello@mazzotta.me)
