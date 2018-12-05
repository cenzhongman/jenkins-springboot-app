#!/usr/bin/env bash

ll .pidFile
cat .pidFile
kill $(cat .pidFile)