#!/bin/bash
uninstall () {
    echo "Uninstalling App as installation failed... Please try installation again."
    ./uninstall.sh
    exit
}

cd `dirname $0`
sfctl application upload --path alsantan-api-2 --show-progress
if [ $? -ne 0 ]; then
  uninstall
fi

sfctl application provision --application-type-build-path alsantan-api-2
if [ $? -ne 0 ]; then
  uninstall
fi

sfctl application create --app-name fabric:/alsantan-api-2 --app-type alsantan-api-2Type --app-version 1.0.0
if [ $? -ne 0 ]; then
  uninstall
fi

cd -