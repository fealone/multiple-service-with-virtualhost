#!/bin/bash
yarn build
tar -zcvf dist.tar.gz dist
rm -rf ../nginx/static/service-b/*
cp -rf dist/* ../nginx/static/service-b/
rm -rf dist
rm dist.tar.gz
