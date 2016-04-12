#!/bin/bash
# Q6: Write a bash query NS records

#!/bin/sh
host -t ns $1

# Q7: Pipe commands to scan through a file system and sort in order to show which directories consume the most disk space
du / | sort -rn | head

# Q8: Display information including the default gateway
route -n

# Q9: How do you test whether a remote port is open?
eg.
tcping 192.168.1.1 80

# Q10: List the process that is listening on port 80, and explain the meaning of the columns in the output.
netstat -tulpn | grep :80
