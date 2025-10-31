echo "Installing alpine packages..."
apk --no-cache add ca-certificates wget git

if [ -f "assets/glibc/glibc-2.35-r1.apk" ]; then
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
    apk add --allow-untrusted assets/glibc/glibc-2.35-r1.apk || echo "Warning: glibc install failed"
    apk add --allow-untrusted assets/glibc/glibc-bin-2.35-r1.apk || echo "Warning: glibc-bin install failed"
    apk add --allow-untrusted assets/glibc/glibc-dev-2.35-r1.apk || echo "Warning: glibc-dev install failed"
    apk add --allow-untrusted assets/glibc/glibc-i18n-2.35-r1.apk || echo "Warning: glibc-i18n install failed"
fi

apk add font-adobe-100dpi

echo "Installing Msyh fonts..."
mkdir -p /usr/share/fonts/msyh

cp assets/fonts/msyh.ttc /usr/share/fonts/msyh/
cp assets/fonts/msyhbd.ttc /usr/share/fonts/msyh/
cp assets/fonts/msyhl.ttc /usr/share/fonts/msyh/

chmod 644 /usr/share/fonts/msyh/msyh.ttc
chmod 644 /usr/share/fonts/msyh/msyhbd.ttc
chmod 644 /usr/share/fonts/msyh/msyhl.ttc

fc-cache -f
echo "Installed successfully."