# Write a script that reads a log file and:

# Counts the occurrences of each HTTP Status Code (200, 404, 500, etc.).

# Identifies the top 5 IP addresses making requests.

# Prints a warning if any IP makes more than 100 requests.

# Key Skills: open(), dictionaries, for-loops, if-conditions.

file_path = "/var/log/nginx/access.log"

with open(file_path, "r") as file:
    for line in file:
        # find total count of each HTTP status code

        awk '{print $9}' line | sort | uniq -c 

        print(line)