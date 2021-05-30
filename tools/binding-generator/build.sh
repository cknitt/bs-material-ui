#!/bin/bash
./node_modules/.bin/ts-node --project ./tsconfig.json --files ./src/index.ts;
./node_modules/.bin/ts-node --project ./tsconfig.json --files ./src/lab.ts;
./node_modules/.bin/rescript format ./../../output/reason/core/*.res;
./node_modules/.bin/rescript format ./../../output/reason/lab/*.res;
./node_modules/.bin/rescript;

# Core
rm ./../../output/reason/core/*.js;
rm ./../../public/bs-material-ui/src/*;
mv ./../../output/reason/core/*.res ./../../public/bs-material-ui/src;

# Lab
rm ./../../output/reason/lab/*.js;
rm ./../../public/bs-material-ui-lab/src/*;
mv ./../../output/reason/lab/*.res ./../../public/bs-material-ui-lab/src;