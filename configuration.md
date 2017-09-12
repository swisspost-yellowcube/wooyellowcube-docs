# Configuration

## Basic configuration

You will find the YellowCube configuration section under the *WooYellowCube* main menu item in the side administration toolbar.

The fields below **Personal informations** need to be filled out with the information you have received by the YellowCube customer service. The field "Sender" is case sensitive.

The fields below **Technical information** need to be setup.

* *SOAP url*: URLs of SOAP services for different operating modes. *https://service.swisspost.ch/apache/yellowcube/?wsdl* should
  be used for production websites.
* *Operating mode*: Choose between _Testing and Production_
  * In Testing mode orders are processed virtually. Documents, labels etc. are printed out and scanned. This mode is for testing purposes.
  * Production mode needs to be set when the website is live and working.
  * Development mode is only intended to be used by developers. YellowCube users should never use this mode.
* *Authentification*: Should be enabled if you are using certificate file to authenticate with YellowCube.
* *Authentification file*: If the certificate authentication is used provide path to the certificate file on the
  server in this field (relative to the folder of the WooYellowCube extension).

Enable **Lot management** if you are planning to send out batch products enable.

Define how many days logs will be kept in the database in the **Logs** section. We suggest you start with 30 days and then reduce it if the amount of log items becomes an issue.

![](/assets/Informations.png)

## Shipping

Setup shipping according your business logic.

You will find more detailed information about basic and additional shipping services in the YellowCube Interface Manual.

![](/assets/Shipping.png)

## Activity Log

Check the **activity log** to see the activity on your website. A log message is automatically created when errors occur, stock inventory is updated etc. You will also find the tracking numbers for
orders that were already processed and shipped.

![](/assets/Activity_Log.png)

## Stock management

In the **WooYellowCube stock management** you will find information about your products. For each _Product name \(SKU\)_ you can check how many items are available in the YellowCube stock.

![](/assets/Stock_management_top.png)

Here you also can take action for selected products:

* *Send ART profile*: Will send basic information (name, SKU, size, weight, ...) about the product to YellowCube. This generally happnes automatically upon product creation and
  update so it should only be used if something went wrong.
* *Update WooCommerce Stock with YellowCube*: Stock information in WooCommerce will sometimes diverge from the one reported by YellowCube for various reasons. If you are sure that
  the stock information provided by the latter is correct you can use this action to override the information WooCommerce has about the selected products.
* *Force to refresh inventory*: This will do the same as the previous option, but it will update all the products in the system not just the manually selected ones.

![](/assets/Stock_management.png)

