FTPloy
======

This [lftp](http://rudix.org/packages/lftp.html) script mirrors a local directory to a remote server. It's mostly cribbed from [nwgwat's lftp scripts](https://github.com/nwgat/lftp). 

Basically, I hardcoded some parameters & zuzz'd up a simple shell command:

```bsh
lftp ftp://USERNAME:PASSWORD@HOST -e 'mirror -R --verbose --use-pget-n=8 -c 'local_path' 'remote_path''
```
