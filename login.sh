#!/usr/bin/env bash
# One-time sign-in: enter your OpenBot email and the code it sends you.
docker exec -it openbot openbot login
docker exec openbot openbot status
