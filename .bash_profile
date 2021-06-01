# bash_profile
set -o vi


# config wsl2 below，remember v2ray allow local connect

# export windows_host=`cat /etc/resolv.conf|grep nameserver|awk '{print $2}'`
# export ALL_PROXY="socks5://$windows_host:23333"
# export ALL_PROXY="https://$windows_host:23333"
# export HTTP_PROXY=$ALL_PROXY
# export HTTPS_PROXY=$ALL_PROXY

# if [ "`git config --global --get proxy.https`" != "socks5://$windows_host:23333" ]; then
#             git config --global proxy.https socks5://$windows_host:23333
# fi

