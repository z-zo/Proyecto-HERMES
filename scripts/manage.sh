#!/usr/bin/env bash


case "$1" in
    up)
      docker compose up -d
      ;;
    down)
      docker compose down
      ;;
    logs)
      docker compose logs -f
      ;;
    +)
      echo "usage: $0 {up|down|logs}"
      ;;
esac
