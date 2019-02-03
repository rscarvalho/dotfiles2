#!/bin/sh

DIR="$( cd "$( dirname "${0}" )" >/dev/null 2>&1 && pwd )"

[[ -e "${HOME}/.rcrc" ]] || ln -s ${DIR}/rcrc ${HOME}/.rcrc
rcup -v
