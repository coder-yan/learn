

# 探测SSL算法
- nmap --script ssl-cert,ssl-enum-ciphers -p 21768,31768,12333,13333 127.0.0.1
- nmap --script ssl-cert,ssl-enum-ciphers -p 31768,21768 127.0.0.1
