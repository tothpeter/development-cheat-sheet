#

##Unix
sudo atom /etc/apache2/sites-available/

sudo a2ensite domain1.com

sudo service apache2 reload
sudo service apache2 restart

## OSX

### Link domains to localhost in hosts file
sudo atom /etc/hosts

### Uncomment some lines
sudo atom /private/etc/apache2/httpd.conf

LoadModule proxy_module libexec/apache2/mod_proxy.so
LoadModule proxy_http_module libexec/apache2/mod_proxy_http.so
Include /private/etc/apache2/extra/httpd-vhosts.conf

### Add vhosts
__Chrome forces ssl over .dev domains__

sudo atom /private/etc/apache2/extra/httpd-vhosts.conf

```
<VirtualHost *:80>
	ServerName api.app.test

	ProxyPass / http://0.0.0.0:5000/
  ProxyPassReverse / http://0.0.0.0:5000/
</VirtualHost>


<VirtualHost *:80>
	ServerName app.test

	ProxyPass / http://0.0.0.0:5000/
  ProxyPassReverse / http://0.0.0.0:5000/
</VirtualHost>
```

### Restart apache
sudo apachectl restart
sudo apachectl configtest
