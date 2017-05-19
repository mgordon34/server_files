#!/bin/bash

start () {
  systemctl start nginx
  systemctl start node
  systemctl start api_server
}

stop () {
  systemctl stop nginx
  systemctl stop node
  systemctl stop api_server
}

restart() {
  stop
  start
}

status () {
  systemctl status nginx
  systemctl status node
  systemctl status api_server
}

for arg in "$@"
do
  case $arg in
    "start" )
      start;;
    "stop" )
      stop;;
    "restart" )
      restart;;
    "status" )
      status;;
  esac
done

