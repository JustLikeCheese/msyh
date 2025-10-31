echo "Installing alpine packages..."
apk --no-cache add ca-certificates wget git
wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
apk add glibc-2.35-r1.apk glibc-bin-2.35-r1.apk glibc-dev-2.35-r1.apk glibc-i18n-2.35-r1.apk

apk add font-adobe-100dpi

echo "Installing Msyh fonts..."
cp assets/fonts/msyh.ttc /usr/share/fonts/msyh
cp assets/fonts/msyhbd.ttc /usr/share/fonts/msyh
cp assets/fonts/msyhl.ttc /usr/share/fonts/msyh

chmod 777 /usr/share/fonts/msyh/msyh.ttc
chmod 777 /usr/share/fonts/msyh/msyhbd.ttc
chmod 777 /usr/share/fonts/msyh/msyhl.ttc

fc-cache -f
echo "Installed successfully."
