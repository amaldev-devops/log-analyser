# NGINX Log Analyser

A simple Bash script to analyze NGINX access logs and display the top 5 most frequent IP addresses, requested paths, HTTP status codes, and user agents.

## Features

- Find the top 5 IP addresses with the most requests.
- Find the top 5 most requested paths.
- Find the top 5 HTTP response status codes.
- Find the top 5 user agents.
- Validate the provided log file path.

## Requirements

- Linux
- Bash
- `awk`, `sort`, `uniq`, and `head`

## Usage

Make the script executable:

```bash
chmod +x log-analyser.sh
```

Run the script:

```bash
./log-analyser.sh
```

Enter the path to your NGINX access log when prompted.

Example:

```text
/root/project_files/nginx-access.log
```

## Project Reference

https://roadmap.sh/projects/nginx-log-analyser

