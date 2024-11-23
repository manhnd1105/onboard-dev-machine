# mount the disk drive K into WSL working folder to resolve UNC issues
#subst k: \\wsl.localhost\Ubuntu\home\manhnd1105
net use K: \\wsl.localhost\Ubuntu /persistent:yes
