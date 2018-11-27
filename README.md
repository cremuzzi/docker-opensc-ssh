# How to use this image

## Run a simple container

First you need to plug in your USB crypto token or smartcard reader.

Then run a simple container:

```sh
docker run --name opensc-ssh --device /dev/bus/usb -d cremuzzi/opensc-ssh
```

Please notice the `--device` option. In this example we are are sharing our usb device with the container.

This image runs the `pcscd` daemon by default.

## SSH into a remote host via pkcs11


```sh
docker exec -i -t openssh-ssh ssh -I /usr/lib/opensc-pkcs11.so user@host
```

This will ssh into a remote host using pkcs11 for authentication.

## SCP files to a remote host via pkcs11


```sh
docker exec -i -t openssh-ssh scp -o PKCS11Provider=/usr/lib/opensc-pkcs11.so SOURCE user@host:~/
```

this will copy SOURCE to the home directory of a remote host using pkcs11 for authentication.
