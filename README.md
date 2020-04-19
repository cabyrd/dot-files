# dot-files
Use yadm to setup config and bootstrap systems in the following manner:

```
git clone https://github.com/TheLocehiliosan/yadm.git ~/.yadm-project
mkdir ~/bin && ln -s ~/.yadm-project/yadm ~/bin/yadm
export PATH=$PATH:~/bin
yadm clone <dot-file-repo>
```
