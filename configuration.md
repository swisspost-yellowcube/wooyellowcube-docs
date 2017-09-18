# Configuration

## Basic configuration

You will find the YellowCube configuration section under the _WooYellowCube_ main menu item in the side administration toolbar.

The fields below **Personal informations** need to be filled out with the information you have received by the YellowCube customer service. The field "Sender" is case sensitive.

The fields below **Technical information** need to be setup.

* _SOAP url_: URLs of SOAP services for different operating modes. [https://service.swisspost.ch/apache/yellowcube/?wsdl](https://service.swisspost.ch/apache/yellowcube/?wsdl) should
  be used for production websites.
* _Operating mode_: Choose between _Testing and Production_
  * In Testing mode orders are processed virtually. Documents, labels etc. are printed out and scanned. This mode is for testing purposes.
  * Production mode needs to be set when the website is live and working.
  * Development mode is only intended to be used by developers. YellowCube users should never use this mode.
* _Authentification_: Should be enabled if you are using certificate file to authenticate with YellowCube.
* _Authentification file_: If the certificate authentication is used provide path to the certificate file on the
  server in this field \(relative to the folder of the WooYellowCube extension\).

Enable **Lot management** if you are planning to send out batch products.

Define how many days logs will be kept in the database in the **Logs** section. We suggest you start with 30 days and then reduce it if the amount of log items becomes an issue.

Note that you need to provide the IP address of your WooCommerce Shop to YellowCube for giving your shop access to YellowCube. This can also affect the configuration for any staging/development envirnoments. Consult your dedicated service provider for more informations about that.

![](/assets/Informations.png)

## Shipping

YellowCube relies on [shipping zones](https://docs.woocommerce.com/document/setting-up-shipping-zones/) so you should configure them according to your business logic first. If unsure how to do that check the [relevant section of the WooCommerce documentation pages](https://docs.woocommerce.com/document/setting-up-shipping-zones/).

Once you have configured shipping zones and added the desired shipping methods to them you will be able to configure YellowCube specific configuration for each of them. You will be able to do that on the configuration page that can be found by navigating to _WooYellowCube -&gt; Shipping_:

![](/assets/Shipping.png)

The page lists all shipping methods \(grouped by zones\) and allows you to configure YellowCube for each of them separately. YellowCube can be enabled by selecting _Activated_ in the _Status_ dropdown for the relevant shipping zone/method.

The other two dropdowns \(_BasicShippingServices_ and _AdditionalShippingServices_\) allow you to select the YellowCube product that should be used.  You will find more detailed information about those in the YellowCube Interface Manual.

## Activity Log

Check the [**activity log**](/activity-log.md) to see the activity on your website.

## Stock management

In the **WooYellowCube stock management** you will find information about your products. For each _Product name \(SKU\)_ you can check how many items are available in the YellowCube stock.

![](/assets/Stock_management_top.png)Here you also can take action for selected products:

* _Send ART profile_
  Will send basic information \(name, SKU, size, weight, ...\) about the product to YellowCube. This generally happnes automatically upon product creation and update so it should only be used if something went wrong.
* _Update WooCommerce Stock with YellowCube_:
  Stock information in WooCommerce will sometimes diverge from the one reported by YellowCube for various reasons. If you are sure that the stock information provided by the latter is correct you can use this action to override the information WooCommerce has about the selected products.
* _Force to refresh inventory_
  This will have the same effect as \_Update WooCommerce Stock with YellowCube \_but it will apply to all products and not just the ones that you manually selected.

![](/assets/Stock_management.png)

