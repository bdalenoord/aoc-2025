#!/bin/bash

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <workflow_id> <output_path>"
    exit 1
fi

WORKFLOW_ID=$1
OUTPUT_PATH=$2

# Execute the command inside the container
docker compose exec aoc-n8n sh -c "cd /opt/aoc && n8n export:workflow --id=$WORKFLOW_ID --output=$OUTPUT_PATH"
