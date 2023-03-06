# Detect-anomaly-network
This Perl script monitors network traffic on the eth0 interface for suspicious activity and reports any anomalies to a log file and the console. This can be useful for improving anti-DDoS measures or for testing network security.

The script uses the tcpdump command to capture a single packet from the eth0 interface and then parses the output to extract the protocol, ports, and IP addresses. If the protocol and port combination is suspicious, the script logs the anomaly to both the console and a specified log file.

It's important to note that the script may contain bugs, and it's recommended to thoroughly test it before using it in a production environment. Additionally, the script requires tcpdump to be installed on the system. To install tcpdump on Ubuntu or Debian, run the following command in the terminal:


How to install Tcpdump
sudo apt-get install tcpdump
