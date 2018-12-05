#!/usr/bin/env bash

cat .pidFile
kill -9 $(cat .pidFile)