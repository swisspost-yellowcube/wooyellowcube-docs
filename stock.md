# Stock management

In the **Stock management** you will find the effective YellowCube product stock for each _Product name \(SKU\)_ and compare it with the local WooCommerce stock counter.

![](/assets/Stock_management_v2.png)

Columns are:
- *SKU*: The unique product identifier
- *Shop product*: A link to the connected WooCommerce product
- *Shop stock*: Available stock as of the shop counter.
- *Shop pending*: Orders that are not yet sent to YellowCube or outstanding confirmation.
- *YellowCube stock*: The effective YellowCube stock at date. 
- *YellowCube date*: The date of the last stock report.
- *Stock similarity*: ** *Different stock* if it doesn't match.
- *Details*: Access to optional lot management details.

YellowCube exports each night at about 04:00 the current stock information. The daily cron then updates the stock table
with the information. Even on force refresh, the stock information is not more up-to-date.

On the other hand, WooCommerce decreases the stock as soon as an order is received.

To minimise the stock counter inconsistencies, we also display the pending article count.
This contains all articles in received orders that are not yet processed by YellowCube. 

Here you also can take action for selected products:

* _Send ART profile_
  Will send basic information \(name, SKU, size, weight, ...\) about the product to YellowCube. This generally happnes automatically upon product creation and update so it should only be used if something went wrong.
* _Update WooCommerce Stock with YellowCube_:
  Stock information in WooCommerce will sometimes diverge from the one reported by YellowCube for various reasons. If you are sure that the stock information provided by the latter is correct you can use this action to override the information WooCommerce has about the selected products.
* _Force to refresh inventory_
  This will have the same effect as \_Update WooCommerce Stock with YellowCube \_but it will apply to all products and not just the ones that you manually selected.
