#!/bin/bash
yarn build
tar -zcvf dist.tar.gz dist
rm -rf ../nginx/static/service-a/*
cp -rf dist/* ../nginx/static/service-a/
rm -rf dist
rm dist.tar.gz
