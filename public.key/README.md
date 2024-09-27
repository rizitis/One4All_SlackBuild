## Verification of Builds

To verify the authenticity of binaires, you can use the provided public key. 

1. Download the public key:
   ```
   curl -O https://raw.githubusercontent.com/rizitis/One4All_SlackBuild/main/public.key/public_key.pem
   ```
2.  Command
```
openssl dgst -sha256 -verify public_key.pem -signature binary_file_name.sig binary_file_name
```
3. You can also find this public key  [here](https://gitlab.gnome.org/rizitis/public.key/-/raw/main/public_key.pem%20) just in case...