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
      <td>Provide:package.t?z.sig package.t?z.txt package.t?z.md5 package_build.log</td>
      <td>Support:sla </td>
   </tr>
</table>

> You can also run SlackBuild in user mode if needed (google-golang tec...) and only for makepkg using sudo...