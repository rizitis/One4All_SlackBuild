# One4All_SlackBuild


> Personal [SlackBuild Template](https://github.com/rizitis/One4All_SlackBuild/blob/main/TEMPLATE.SlackBuild) for:
<p>
   
- [x] autotools
- [x] cmake
- [x] meson
- [x] python
- [x] haskel
- [x] perl
- [x] cargo
- [x] google-golang
- [x] custom and complex builds
- [x] binary packaging


*One TEMPLATE for most of SlackBuilds...<br>
Here are some optional builds:*

| PRGNAM |Template | SRC COMPRESS | 
| ------------- |:-------------:| -----:| 
| Markdown | python | git+tar.gz | 
| a68g | autotools | tar.gz | 
| config-file-validator | google-golang | git+tar.gz |
| conjure | meson | git+tar.gz |
| coppwrr | cargo | git+tar.gz |
| ffmpeg | compelx+custom | tar.xz |
| gtk-fortran | cmake | git+tar.gz |
| hyprutils | custom | git clone |
| mozjs130 | mach+custom | tar.xz |
| openSeaChest | meson |git+ SourceCode_With_Submodules.tar.xz |
| obs-studio | cmake |git clone+tar.gz |


> Supported for download and extract src package types are:
- [x] tar.gz
- [x] tar.xz
- [x] bz2
- [x] rar
- [x] gz
- [x] tar
- [x] tbz2
- [x] tgz
- [x] zip
- [x] Z
- [x] 7z

> Also, if needed, by default support and download src package from repos using:
- [x] cvn co
- [x] cvs -z3 -f
- [x] git clone
- [x] lftp -c mirror

#### REQUIRED

Optional but very useful dependency is [slackdesc](https://slack-desc.sourceforge.net/) <p>


 <table>
   <tr>
      <td>One SlackBuild Template for all builds</td>
      <td>All kind of repos and src compression types supported</td>
   </tr>
   <tr>
      <td>Easy create/modify slack-desc and doinst.sh</td>
      <td>Flexibly for special and complex builds</td>
   </tr>
   <tr>
      <td>Provide: package.dep package.t?z.sig package.t?z.txt package.t?z.md5 makepkg-package.log  build.lo</td>
      <td>Support: slack-required slack-conflicts slack-suggestsg</td>
   </tr>
</table>

 
> [!NOTE] 
*Althought TEMPLATE.SlackBuild its stable and build  packages fine, its a personal work in progress.<br>
When I found something useful it will be added in TEMPLATE.SlackBuild.*

> [!IMPORTANT]
<br> *If you want to use for your personal builds this TEMPLATE of SlackBuilds install [slackdesc](https://github.com/rizitis/One4All_SlackBuild#required) is optional*<br>

> [!CAUTION]
*But if you want to build using my SlackBuilds then you must have [slackdesc](https://github.com/rizitis/One4All_SlackBuild#required) in your installation, else create a manually a slack-desc the traditioanl way*<p>
This repo is not provided as binary repo for Slackware-current or as SlackBuilds repo, its just **MY** repo [i]which provide the TEMPLATE.SlackBuild[/i].

> [!TIP]
> You can edit and ran, ***if needed***, SlackBuilds as regular user...<sup>go, rust, etc.. </sup>
> In that case ***disable chroot function*** and add a ***sudo before makepkg command***

#### Inspired
Thanks to: <br>[pete4abw/makesbld](https://github.com/pete4abw/makesbld) <br> [Alien's SlackBuild Toolkit](https://alien.slackbook.org/AST/)<br> [Martin Lefebvre](https://www.slackwiki.com/Different_Approach_To_Buildscripts)<br>[Robby Workman](https://www.slackwiki.com/Writing_A_SlackBuild_Script) <br>[SlackBuildsOrg](https://github.com/SlackBuildsOrg/templates)
