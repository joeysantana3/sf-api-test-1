#!/bin/bash

sfctl application delete --application-id alsantan-api-2
sfctl application unprovision --application-type-name alsantan-api-2Type --application-type-version 1.0.0
sfctl store delete --content-path alsantan-api-2
