#!/bin/bash

#-------------------------------------------------------------
# IBM Confidential
# OCO Source Materials

# (C) Copyright IBM Corp. 2018
# The source code for this program is not published or
# otherwise divested of its trade secrets, irrespective of
# what has been deposited with the U.S. Copyright Office.
#-------------------------------------------------------------

set -e

printf "registry=https://na.artifactory.swg-devops.com:443/artifactory/api/npm/wcp-wdp-npm-virtual/\n" >> .npmrc
curl -H "X-JFrog-Art-Api:${ARTIFACTORY_NPM_API_KEY}" -X GET https://na.artifactory.swg-devops.com/artifactory/api/npm/auth >> .npmrc
