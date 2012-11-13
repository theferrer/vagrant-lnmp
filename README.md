What
====
Vagrant with Puppet for a complete web development workspace

Content
=======
Ubuntu Server 12.04 + Nginx + PHP + MySQL + MongoDB + NodeJS + Redis and more... 

How
===
 1. Clone this repository:
      `git clone git://github.com/theferrer/vagrant-lnmp.git`
 2. Edit `manifests/main.pp` to manage the packages you want and add the virtual hosts with `addServer`.
 3. Choose between to use guest address `47.47.47.47` or host address `127.0.0.1` (Port redirection enabled by default) and update `/etc/host` to accomplish your own requirements.
    For example: `47.47.47.47 adminer.local`
 4. Run `vagrant up`.
 5. In order to test your configuration file you can load the following url:
      [http://adminer.local](http://adminer.local)
 
 Remember to edit your /etc/hosts
    
