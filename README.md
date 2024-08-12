# One4All_SlackBuild


> Personal [SlackBuild Template](https://github.com/rizitis/One4All_SlackBuild/blob/main/TEMPLATE.SlackBuild) for:
<p>[1]: autotools <br>
[2]: cmake<br>
[3]: meson<br>
[4]: python <br>
[5]: haskel<br>
[6]: perl<br>
[7]: cargo<br>
[8]: google-golang <br>
[9]: custom and complex builds<br>


*One TEMPLATE for most of SlackBuilds...
Here are some optional builds...*

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
| mozjs129 | mach+custom | tar.xz |
| openSeaChest | meson |git+ SourceCode_With_Submodules.tar.xz |


#### REQUIRED

Optional but very useful dependency is [slackdesc](https://slack-desc.sourceforge.net/)

#### TIPS

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
      <td>Provide: package.dep package.t?z.sig package.t?z.txt package.t?z.md5 makepkg-package.log</td>
      <td>Support: slack-required slack-conflicts slack-suggests </td>
   </tr>
</table>

> You can also run SlackBuild in user mode if needed (google-golang etc...) and only for makepkg using sudo...

##### NOTE: 
*Althought TEMPLATE.SlackBuild its stable and build  packages fine, its a personal work in progress.<br>
When I found something useful it will be added in TEMPLATE.SlackBuild.*

#### Inspired
Thanks to:<br> [pete4abw/makesbld](https://github.com/pete4abw/makesbld) <br> [Alien's SlackBuild Toolkit](https://alien.slackbook.org/AST/)<br> [Martin Lefebvre](https://www.slackwiki.com/Different_Approach_To_Buildscripts)<br>[Robby Workman](https://www.slackwiki.com/Writing_A_SlackBuild_Script) <br>[SlackBuildsOrg](https://github.com/SlackBuildsOrg/templates)
