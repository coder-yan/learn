# 探测支持的算法
openssl s_client -tls1_2 -cipher AES128-SHA -connect 127.0.0.1:21768
openssl s_client -tls1_2 -cipher AES256-SHA -connect 127.0.0.1:21768

openssl s_client -tls1_2 -cipher ECDHE-RSA-AES128-SHA -connect 127.0.0.1:21768
openssl s_client -tls1_2 -cipher ECDHE-RSA-AES128-SHA256 -connect 127.0.0.1:21768
openssl s_client -tls1_2 -cipher ECDHE-RSA-AES256-SHA -connect 127.0.0.1:21768

nmap --script ssl-cert,ssl-enum-ciphers -p 21768,31768,12333,13333 127.0.0.1
nmap --script ssl-cert,ssl-enum-ciphers -p 31768,21768 127.0.0.1

