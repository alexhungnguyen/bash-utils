#!/bin/bash

# Get the directory path of the script
script_dir="$(cd "$(dirname "$0")" && pwd)"

# Import sub-commandlines.
for script in $(
	find "${script_dir}/services" -type f -name 'main.sh'
); do
	source "$script"
done

docker_exec_inside_with_hint
