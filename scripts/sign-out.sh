#!/bin/bash

curl --include --request DELETE http://localhost:3000/fund/1 \
  --header "Authorization: Token token=$TOKEN"
