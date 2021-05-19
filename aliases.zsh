
statuscolor() {
awk '
  / 500/    {color="31m"}
  / 504/    {color="34m"}
  / 200/    {color="32m"}
           {print "\033["color $0" \033[39m"}
'
}

ctail() {
tail -n 40 -f $1 | awk '
  BEGIN    {color="30m" }
  /INFO/   {color="32m"}
  /WARN/   {color="33m"}
  /ERROR/  {color="31m"}
  /SEVERE/ {color="31m"}
  /FATAL/  {color="31m"}
           {print "\033["color $0" \033[39m"}
'
}

logcolor() {
cat $1 | awk '
  BEGIN    {color="30m" }
  /INFO/   {color="32m"}
  /WARN/   {color="33m"}
  /ERROR/  {color="31m"}
  /SEVERE/ {color="31m"}
  /FATAL/  {color="31m"}
           {print "\033["color $0" \033[39m"}
'
}

branchName() {
    pbpaste | tr '\n' ' ' | sed 's/^ *//g' | sed 's/ /_/g' | sed 's/__/_/g'
}

alias e=emacs
#alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
alias ea='emacs ~/.oh-my-zsh/custom/aliases.zsh'
alias ez='emacs ~/.zshrc'

alias fixCamera='sudo killall VDCAssistant'

headTail() {
    printf 'start: %s, end: %s%n' $(head -n 1 $1 | awk '{ print $2}') $(tail -n 1 $1 | awk '{ print $2}')
}

alias -g jq="jq -C '.'"

alias la='ls -laF'
alias ll='ls -lF'

alias mysips='sips --resampleWidth 1600'

alias nss1='p4 print //docs/syscomm/nss/testnets/configurations/configuration.nss1.odin | less'

function pg() { pgcli --single-connection "host=database.$1.ams.akadns.net dbname=ams-$1 user=ams_readonly sslcert=/Users/abrahamd/.certs/abrahamd-bos-mpzw9-20210309.crt sslkey=/Users/abrahamd/.certs/abrahamd-bos-mpzw9-20210309.key sslrootcert=/Users/abrahamd/.certs/akamai_ca_list.pem sslmode=verify-ca" }
pless () { pygmentize -f 256 -O style=emacs $* | less -R }
alias prod='p4 print //sysgrp/main/configuration/configuration.odin | less'

alias vless='vim -u /usr/share/vim/vim73/macros/less.vim'

alias run-monocle='cd /Users/abrahamd/git/monocle; java -Xmx2048m -Djavax.net.ssl.trustStore=/Users/abrahamd/.certs/aka-cacert -Djavax.net.ssl.trustStorePassword=changeit -Djavax.net.ssl.keyStore=/Users/abrahamd/NMS/abrahamd-2.p12 -Djavax.net.ssl.keyStoreType=PKCS12 -Djavax.net.ssl.keyStorePassword=arugulaisavegetable -Djsse.enableSNIExtension=false -jar /Users/abrahamd/git/monocle/target/ams-monocle-*.jar; cd -;'

alias sa='source ~/.oh-my-zsh/custom/aliases.zsh'
alias sz='source ~/.zshrc'
function sql2 {
    ssh l3 sql2 "$@"
}

function sql3 {
    for i in "$@"; do echo $i; done
}

source ~/.aliases &> /dev/null

