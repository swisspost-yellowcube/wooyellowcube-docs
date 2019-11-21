# Stock management

In the **Stock management** you will find the effective YellowCube product stock for each _Product name \(SKU\)_ and compare it with the local WooCommerce stock counter.

To understand potential stock counter inconsistencies, we also display the pending article count.

![](/assets/Stock_management_v2.png)

This contains all articles in received orders that are not yet processed by YellowCube. 

Columns are:
- *SKU*: The unique product identifier
- *Shop product*: A link to the connected WooCommerce product
- *Shop stock*: Available stock as of the shop counter.
- *Shop pending*: Orders that are not yet sent to YellowCube or outstanding confirmation.
- *YellowCube stock*: The effective YellowCube stock at date. 
- *YellowCube date*: The date of the last stock report.
- *Stock similarity*: ** *Different stock* if it doesn't match.
- *Details*: Access to optional lot management details.

## Stock count math

YellowCube exports each night at about 04:00 the current stock information. The daily cron then updates the stock table
with the information. Even on force refresh, the stock information is not more up-to-date.

On the other hand, WooCommerce decreases the stock as soon as an order is received.

Thus the stock is considered the *Same stock* if

> **Shop stock** + **Shop pending** == **YellowCube stock**

Accordingly an update of *Shop stock* will deduct *Shop pending* from the *YellowCube stock*

Thus WooCommerce [does not fit for splitting orders and managing stock across multiple stores](orders_admin.md)
including additional local product storage.

## Stock actions
Here you also can take action for selected products:

* _Send ART profile_
  Will send basic information \(name, SKU, size, weight, ...\) about the product to YellowCube. This generally happnes automatically upon product creation and update so it should only be used if something went wrong.
* _Update WooCommerce Stock with YellowCube_:
  If you are sure that the stock information provided by YellowCube is correct you can use this action to override the WooCommerce stock information.
* _Force to refresh inventory_
  This will reload the stock table data from YellowCube based on the last inventory export.
