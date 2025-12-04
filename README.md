# Advent of Code 2025

This repo contains my solutions for Advent of Code 2025. This year, I'm using n8n to solve the problems. Some parts of solutions will definitely include some code blocks, so it's at least partially Javascript, but I'm hoping to at least improve my n8n skills with this approach.

## How to run
You can start n8n locally by running `docker compose up -d`. It runs at port 56781 (as this is a separate instance from my normal development environment). The repository is mounted into the container which provides access to importing and exporting workflows. You can shell into the container by running `docker compose exec -ti aoc-n8n sh` and then `cd /opt/aoc` to navigate to the mounted repo.

Workflow development is of course handled through the webinterface. Created workflows can be exported by grabbing their ID's, and then running `n8n export:workflow --id=<id> --output=<filename>.json`. In a very similar way, you can also import workflows already in the repository using `n8n import:workflow --input=<filename>.json`. To aid in this process, you can also use `./export.sh <workflow id> <day>/<day>.json`
