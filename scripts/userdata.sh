#!/bin/bash
set -euxo pipefail

# Create the web server document directory
mkdir -p /var/www/html

# Create a simple application page
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>AWS 3-Tier Application</title>
</head>
<body>
    <h1>AWS 3-Tier Infrastructure</h1>
    <h2>Application Server: ${server_name}</h2>
    <p>Deployed using Terraform on Amazon Linux 2023.</p>
</body>
</html>
EOF

# Create a systemd service for the web server
cat > /etc/systemd/system/simple-web.service <<'EOF'
[Unit]
Description=Simple Python Web Server
After=network.target

[Service]
Type=simple
ExecStart=/usr/bin/python3 -m http.server 80 --directory /var/www/html
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the web server
systemctl daemon-reload
systemctl enable --now simple-web.service