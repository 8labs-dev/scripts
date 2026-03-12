alias nserve="npm run serve"
alias dd="docker-compose down"
alias dps="docker ps"
alias gclean="git branch | egrep -v '(master|main|\*)' | xargs git branch -D"
alias mapBranches='git fetch --all && git branch -r | grep -v "\->" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done && git pull --all'
alias stashAndPull='git stash && git pull && git stash pop'
alias stashAndMergeMaster='git stash && git pull origin master && git stash pop'
alias stashAndMergeMain='git stash && git pull origin main && git stash pop'
alias cov='jest --config ./test/jest-coverage.js --coverage --maxWorkers=2 --isolatedModules=true'
alias port="sudo lsof -i -P | grep LISTEN | grep"
alias amendAndPush="git add . && git commit --amend --no-edit && git push -f"
alias ammendAndPush="amendAndPush"
alias aap="amendAndPush"
alias aap!="git add . && git commit --amend --no-edit --no-verify && git push -f --no-verify"
alias aap1='aap!'
alias gtfo="git add . && git commit -m '🚀' && git push"
alias fixOpenVpn="sudo launchctl load /Library/LaunchDaemons/org.openvpn.client.plist"
alias mergeDevToMaster="gcm && git pull && git pull origin dev && git push && gcd"
alias mergeMasterToDev="gcd && git pull && git pull origin main && git push && gcm"
alias dcu='docker compose up -d'
alias dl='docker logs'
alias dlf='docker logs -f'
alias diskUsage="du -s . | awk '{printf \"%.2f GB\\n\", \$1 * 512 / 1024 / 1024 / 1024}'"
alias watchDiskUsage="while true; do tput cuu1; tput el; diskUsage; sleep 2; done"
alias kali='docker run -it kalilinux/kali-rolling /bin/bash'
alias npmr="npm run"
alias combinePdfs="gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=merged.pdf ./*.pdf"
alias disableSleep="sudo pmset -a disablesleep 1"
alias enableSleep="sudo pmset -a disablesleep 0"
alias syncHomelabSSH='echo "$(ssh homelab 'listSSH')" > /Users/laura.blum/.ssh/conf.d/homelab'
alias flushDNS='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

lineBreaks () {
  sed 's/\\\\/& /g;s/\\n/\/g;  s/\\\\ /\\\\/g'
}

compresspdf() {
  gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}

killport() {
  sudo kill -9 $(sudo lsof -t -i -P | grep LISTEN | grep "$1" | awk '{print $2}')
}
