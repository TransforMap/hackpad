curl -L -o /tmp/startcom-ca.crt https://www.startssl.com/certs/ca.crt
keytool -noprompt -storepass changeit -import -trustcacerts -alias "StartCom Certification Authority" -file /tmp/startcom-ca.crt -keystore /hackpad/etherpad/etc/cacerts-rds

