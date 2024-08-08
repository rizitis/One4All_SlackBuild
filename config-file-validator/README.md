# README.Slackware:

If you have *google-go-lang* settings for user as suggested in SBo then you must ran this SlackBuild script as **regular user and NOT as root**. 

Build folder and $PKG will be in $PWD directory (same directory with SlackBuild) and only binary output will be in /tmp...
So only for installpkg you need root access...

example:

```
# upgradepkg --install-new --reinstall /tmp/config-file-validator-1.4.0-x86_64-1_rtz.txz
```

Read SlackBuild... before you ran it.

### info
Main is always building latest version of validator, for older versions chose a branche.  

### HOWTO
https://github.com/Boeing/config-file-validator


