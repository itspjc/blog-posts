#/bin/bash 
# https://golang.org/

# download GO Lang
wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz

# Install GO Lang
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# Verify installation
go version