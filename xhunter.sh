#!/bin/bash

# Author: Haitham Aouati
# GitHub: github.com/haithamaouati
# XHunter is a Bash script that fetches detailed user information from X (formerly Twitter) using the X API, including ID, name, bio, location, and social metrics.

clear

# Text formatting
normal="\e[0m"
bold="\e[1m"
faint="\e[2m"
italics="\e[3m"
underlined="\e[4m"

# Check for dependencies
for dep in figlet curl jq; do
  if ! command -v "$dep" &> /dev/null; then
    echo "Error: $dep is not installed. Please install it before running the script."
    exit 1
  fi
done

# ASCII Art
figlet -f standard " XHunter"
echo -e "${bold}         XHunter${normal} by ${faint}hawkha_dz${normal}"
echo -e "       ${underlined}github.com/haithamaouati${normal}\n"

# X API Bearer Token (updated with your token)
BEARER_TOKEN="enter your x bearer token"

# Check if username argument is provided
if [ -z "$1" ]; then
  echo -e "Usage: $0 ${faint}<username>${normal}\n"
  exit 1
fi

# X (Twitter) API endpoint to fetch user data by username
USER_NAME="$1"
API_URL="https://api.twitter.com/2/users/by/username/$USER_NAME"

# Fetch user data using the X API with all relevant fields
response=$(curl -s -X GET "$API_URL?user.fields=id,name,username,description,location,created_at,public_metrics,profile_image_url,url" -H "Authorization: Bearer $BEARER_TOKEN")

# Check if the response contains an error
if echo "$response" | grep -q '"errors"'; then
  echo "Error fetching user info. Response:"
  echo "$response"
  exit 1
fi

# Pretty-print the JSON response (optional, requires jq)
echo -e "User info for ${faint}@$USER_NAME${normal}:\n"
echo "$response" | jq '.data'  # If jq is installed for formatted output
echo -e "\n"
