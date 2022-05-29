#!/bin/bash

# CONTRIBUTION
## Author: Tom Sapletta
## Created Date: 26.05.2022

## EXAMPLE
# ./apipackage.sh install
# ./apipackage.sh update
# ./apipackage.sh remove

# CONFIG
CMD=$1
[ -z "$CMD" ] && CMD="install"
#
CONFIG_FILE=".apipackage"
CONFIG_DEFAULT="apipackage.txt"
if [ "$CMD" == "init" ]; then
  echo -n "$CONFIG_DEFAULT" > "$CONFIG_FILE"
  exit
fi
#
PROJECT_LIST=$2
[ -z "$PROJECT_LIST" ] && [ -f "$CONFIG_FILE" ] && PROJECT_LIST=$(cat "$CONFIG_FILE")
[ -z "$PROJECT_LIST" ] && PROJECT_LIST="$CONFIG_DEFAULT"
#
PROJECT_PATH=$(pwd)
echo $PROJECT_PATH
# START
# If the last line of your file has no newline on the end
while git_repo=; IFS=$' \t\r\n' read -r git_repo || [[ $git_repo ]]; do
  repo=($git_repo)
  GIT_URL="${repo[0]}"
  [ -z "$GIT_URL" ] && echo "git url is empty, example: https://github.com/letpath/bash" && break
  GIT_PATH="${repo[1]}"
  [ -z "$GIT_PATH" ] && echo "GIT_PATH is empty" && break
  GIT_FOLDER="${repo[2]}"
  [ -z "$GIT_FOLDER" ] && echo "GIT_FOLDER is empty" && break


  BUILD="pwd"
  APIBUILD="./apibuild"
  APIFORK_BUILD="pwd"
  APIFORK_BUILD="./apifork install"
  APIFORK_UPDATE="./apifork update"
  #if [ "$language" == "php" ]; then
    BUILD="composer update"
    UPDATE="composer update"
  #fi

  echo "$CMD PROJECT FOLDER: $GIT_PATH/  FROM REPO:  $GIT_URL"
  if [ "$CMD" == "install" ]; then
    [ ! -z "$GIT_PATH" ] && mkdir -p ${GIT_PATH}
    cd ${GIT_PATH} && git clone ${GIT_URL} ${GIT_FOLDER}
    cd ${GIT_FOLDER} && ${BUILD}
    pwd
    ${APIFORK_BUILD}
    ${APIBUILD}
    cd ${PROJECT_PATH}
    ##
    ##echo "apipackage/apipackage/${language}/${name}" >>.gitignore
  elif [ "$CMD" == "update" ]; then
    cd "$GIT_PATH/$GIT_FOLDER" && git pull && ${UPDATE}
    pwd
    ${APIFORK_UPDATE}
    cd ${PROJECT_PATH}
  elif [ "$CMD" == "remove" ]; then
    echo "$GIT_PATH/$GIT_FOLDER"
    rm -rf "$GIT_PATH/$GIT_FOLDER"
  else
    echo "Command $CMD is not recognized"
  fi
done <"$PROJECT_LIST"
