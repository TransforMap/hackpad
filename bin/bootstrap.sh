if keytool -list -storepass changeit -alias "StartCom Certification Authority" -keystore /hackpad/etherpad/etc/cacerts-rds >/dev/null
    then
# via https://github.com/ssbarnea/keytool-trust/blob/master/keytool-trust
# TODO: Automatically fetch certificate from SMTP_HOST.
    echo "Key for StartCom Certification Authority already imported."
    else
    curl -L -o /tmp/startcom-ca.crt https://www.startssl.com/certs/ca.crt
    keytool -noprompt -storepass changeit -import -trustcacerts -alias "StartCom Certification Authority" -file /tmp/startcom-ca.crt -keystore /hackpad/etherpad/etc/cacerts-rds
    fi
