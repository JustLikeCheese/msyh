# Microsoft Ya Hei for Linux

## Alpine

Clone Repo

```sh
git clone https://github.com/JustLikeCheese/msyh
sh install-alpine.sh
```

Change the language if you need

```sh
/usr/glibc-compat/bin/localedef -i zh_CN -f UTF-8 zh_CN.UTF-8
echo "export LANG=zh_CN.UTF-8" >> /etc/bash/bashrc
```
