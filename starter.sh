

Original file line number	Diff line number	Diff line change

@@ -6,35 +6,35 @@
6	6	
set -eu
7	7	

8	8	
# TODO 1: Set the NetworkManager connection profile name.
9		-
CONNECTION_NAME=""
9	+
CONNECTION_NAME="ens3"
10	10	

11	11	
# TODO 2: Set the static IPv4 address with CIDR prefix.
12		-
IP_ADDRESS=""
12	+
IP_ADDRESS="172.25.250.10/24"
13	13	

14	14	
# TODO 3: Set the IPv4 gateway.
15		-
GATEWAY=""
15	+
GATEWAY="172.25.250.254"
16	16	

17	17	
# TODO 4: Set the DNS server.
18		-
DNS_SERVER=""
18	+
DNS_SERVER="172.25.250.254"
19	19	

20	20	
echo "Checking network connection status..."
21	21	

22	22	
# TODO 5: Display connection status using nmcli.
23		-
23	+
nmcli connection show
24	24	
echo "Configuring static IPv4 settings..."
25	25	

26	26	
# TODO 6: Configure the connection using nmcli.
27	27	
# Required settings: ipv4.method manual, ipv4.addresses,
28	28	
# ipv4.gateway, and ipv4.dns.
29		-
29	+
nmcli connection modify "$CONNECTION_NAME" ipv4.method manual ipv4.addresses "$IP_ADDRESS" ipv4.gateway "$GATEWAY" ipv4.dns "$DNS_SERVER"
30	30	
echo "Activating the connection..."
31	31	

32	32	
# TODO 7: Activate the connection using nmcli connection up.
33		-
33	+
nmcli connection up "$CONNECTION_NAME"
34	34	
echo "Verifying IP configuration..."
35	35	

36	36	
# TODO 8: Display the assigned IP configuration using nmcli.
37		-
37	+
nmcli device show
38	38	
# TODO 9: Display the active connection details.
39		-
39	+
nmcli connection show --active
40	40	
echo "IP assignment and verification completed."
