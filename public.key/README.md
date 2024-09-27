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
