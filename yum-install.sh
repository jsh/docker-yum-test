#!/bin/bash

case $1 in
  -p) packagelist=$2; shift 2
      set -- "$@" $(< $packagelist)
      ;;
esac

yum install "$@"
