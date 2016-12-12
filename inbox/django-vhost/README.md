the following is tested on django and django cms projects.

see the sample vhost file, it is setup bases on the tree directory (tree-directory.txt).
make sure to update the hosts file on windows
and add the server name and server alias and the network public ip to the ALLOWED_HOSTS array in settings.py
also make sure the vagrant file has the proper network configuration, (see https://github.com/osamana/mydjango/blob/master/Vagrantfile.example)
 
refs:
https://www.digitalocean.com/community/tutorials/how-to-serve-django-applications-with-apache-and-mod_wsgi-on-ubuntu-14-04#create-and-configure-a-new-django-project
