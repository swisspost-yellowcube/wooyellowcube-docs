# Configuration

## Module configuration

The fields below **Personal informations **need to be filled out with the information you have received by the YellowCube customer service. The field "Sender" is case sensitive.

The fields below **Technical information **need to be setup.

* "SOAP url": Note that test environment and productional environment have different links
* "Operating mode": Choose between _Testing and Production_
  * In Testing mode orders are processed virtually. Documents, labels etc. are printed out and scanned. This mode is for testing purposes
  * Production mode needs to be set when the website is live and working
* "Authentification": Needs to be set to _Yes_ if you use the Soap url with_ -int_ or the productional environment
* "Authentification file": @todo

If you are planning to send out batch products enable the feature in **Lot management.**

Define how many days logs will be kept in the database in the **Logs **section. We suggest you start with 30 days and then reduce it after you have more experience.

![](/assets/Informations.png)

## Shipping

Setup shipping according your business logic.

You will find more detailed information about basic and additional shipping services in the YellowCube Interface Manual.

![](/assets/Shipping.png)

## Activity Log

Check the **activity log** to see the activity on your website. A log message is automatically created when errors occur, stock inventory is updated etc. You will also find the tracking numbers if a _WAR_ was processed.

![](/assets/Activity Log.png)

## Stock management

In the **WooYellowCube stock management** you will find information about your products. For each _Product name \(SKU\)_ you can check how many items are available in the YellowCube stock. 

![](/assets/Stock management top.png)

Here you also can take action for selected products:

* "Send ART profile": @todo
* "Update WooCommerce Stock with YellowCube": Update the stock in WooCommerce so the website and the stock in YellowCube are in sync.
* "Force to refresh memory": @todo

![](/assets/Stock management.png)





