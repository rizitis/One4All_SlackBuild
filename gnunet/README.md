# gnunet

---

## Build-Install

<br>**As root:**
1.  `sh preinstall.sh`
2. ./gnunet.SlackBuild

3. After installallation finish command (as root): 
  - `sh /usr/local/bin/user-gnunet-setup.sh -u your_use_name`

--- 

### Explain better

- Command No1: create groups and users that needed.
- Command No2: run SlackBuild (build and install gnunet in system).
- Command No3: setup your $USER account for gnunet as needed.


---

#### $PATHS

**These files are installed after installation finish:**<br>

`/etc/gnunet-system.conf`<br>
`/etc/rc.d/{gnunet-system-services,gnunet-user-services}`<br>
`/usr/local/bin/user-gnunet-setup.sh`<br>

**This file created after installation from `user-gnunet-setup.sh` script.<br>
`/home/$USER/.config/gnunet.conf`<br>
Also this script trying to create or renew GNS certificate authority (CA) for the $USER.<br>


---

## Start - Stop gnunet

*You can run either as root either as user without root start daemon*

- start

As root:<br>
`gnunet-arm -c /etc/gnunet.conf -s`<br>

OR as user <br>
`gnunet-arm -c ~/.config/gnunet.conf -s`<br>

- stop

 As root:<br>
 ```
 gnunet-arm -c /etc/gnunet.conf -e 
 ```
 OR as user:
 ```
 gnunet-arm -c ~/.config/gnunet.conf -e 
 ```
 
 *in case of zombies:*<br>
 ` ps aux | grep gnunet | grep -v grep | awk '{print $2}' | xargs kill -9`
 
 ---

 #### requires:
 
 - libpqxx
 - libmicrohttpd
 - miniupnpc
   -  `sudo ln -s /usr/bin/upnpc-shared /usr/local/bin/upnpc`
 
 
---

### HELP

-  [steup](https://docs.gnunet.org/latest/users/configuration.html)
- `$ info gnunet`
- `$ man gnunet-{service-name}`


### Bugs
I have some problems... :D