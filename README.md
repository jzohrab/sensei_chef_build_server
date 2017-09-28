# sensei_chef_build_server

## Test Kitchen

```
kitchen create
kitchen converge
kitchen verify
```

There is an issue with the converge in that the PATH is updated, but
the first verify run doesn't see it.

### Vagrant box

You will need a vagrant box named windows-2012R2.

You can make this box using Packer per
http://www.hurryupandwait.io/blog/creating-windows-base-images-for-virtualbox-and-hyper-v-using-packer-boxstarter-and-vagrant.

### Troubleshooting:

* Run it in Powershell as an Administrator
* Ensure you're using a relatively new ChefDK (e.g. 2.3.4), as a WinRM
  bug was fixed in a recent release.

### RDP

```
kitchen login
```

When you bring the box up, you can "kitchen login" to RDP to it, but
you must change the RDP port in .kitchen/default-windows-2012R2.yml
(kitchen rewrites this file, so you'll continually need to update it!)

Username/password: vagrant/vagrant
