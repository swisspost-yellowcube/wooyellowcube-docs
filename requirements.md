# Requirements and dependencies

1. *YellowCube account*: In order to use the YellowCube shipping services you will first need to obtain an account. In order to
    do that you'll need to get in touch with the Swiss Post by using the [online contact form](https://www.post.ch/de/geschaeftlich/themen-a-z/sendung-aufgeben/pakete-aufgeben-geschaeftlich/yellowcube/kontaktformular-yellowcube).
     Post's staff will lead you throughthe onboarding process and provide you with the account information. This will include, among other
     information, things like *Sender ID*, *Reciever ID*, *Depositor Nr.*, *Partner Nr.* and *Plant ID*. You will need those when configuring
     the shop.

2. *Wordpress site with WooCommerce*: You will obviously need a Wordpress site with its eCommerce platform WooCommerce installed on it. If
    you are not sure how to do that consider checking the relevant documentation sections([[1]](https://codex.wordpress.org/Main_Page), [[2]](https://docs.woocommerce.com/documentation/plugins/woocommerce/)) or finding professional support. Wordpress, WooCommerce and WooYellowCube
    plugin are all open source software which means that there are many experts with the necessary expertise available.

3. *Server requirements*:  
    See also [WooCommerce requirements](https://docs.woocommerce.com/document/server-requirements/)).

  - *PHP version*: WooYellowCube plugin will work with any supported version of PHP 7+.  

  - *SOAP PHP extension*: YellowCube uses [SOAP](https://en.wikipedia.org/wiki/SOAP) to communicate with individual stores. WooYellowCube plugin
    requires [PHP SOAP extension](http://php.net/manual/en/book.soap.php) to be installed on the server for that reason. If you are unsure if
    that is the case you should check with your hosting provider.

  - *MySQL database*: MySQL version 5.6 or greater OR MariaDB version 10.0 or greater is required.

4. *HTTPS support*: eCommerce websites usually deal with potentially sensitive information. In order to protect those we **strongly** suggest
    using HTTPS encryption. If you are not sure where to get the certificates we suggest you to check [Let's encrypt, the free, automated and open
    certificate authority](https://letsencrypt.org/).

5. *YellowCube PHP SDK*: WooYellowCube depends on the [official PHP SDK](https://github.com/swisspost-yellowcube/yellowcube-php). If you will install
    the plugin using the [suggested method](installation.md) you don't need to do anything as it is already bundled in the official package.

You should also check the [WordPress](http://wordpress.org/about/requirements/) and [WooCommerce](https://docs.woocommerce.com/document/server-requirements/) requirements.
