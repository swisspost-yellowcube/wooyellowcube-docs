## Order management

When relevant orders are created they will be sent to YellowCube as soon as they reach the *Processing* status.

A well integrated online payment method (e.g. credit cards) will update the status either immediately or with a short delay after clearance (based on a callack).  
If the customer used a payment method that requires manual intervention the operator will need to change the status of the order to *Processing* manually.

The statuses of the orders can be seen on the order listing page:

![](/assets/order_list_v2_marker.png)

The possible values in the YellowCube column are:

- *-*: Order has not been sent to YellowCube at all. This could mean that this specific
  order shouldn't be processed by YellowCube (sent to a shipping zone that is not handled by YellowCube) or that
  there are still conditions to be met to do so (usually awaiting payment).
- *Submitted*: Order has been sent to YellowCube but it hasn't been processed on their side yet.
- *Confirmed*: Order was dispatched from the YellowCube facility and the product is on its way to
  the customer. Tracking code is provided in the logs if applicable.
- *Error*: A problem occured wile trying to process the order on the YellowCube side. Check the logs on the
  order edit page for more info.

Detailed information about YellowCube communication about each order is available at the bottom of the order edit page.

![](/assets/order_info_v2_crop.png)

The status of the order and the tracking information (if available) are displayed on the left.

Log of all the communication about the order can be seen in the right column. If there were any problems you will be able
to see the error messages here.

### Stock reservation on submission

Any order submission will reserve its articles and deduct each articles stock counter immediately.

### Proper order cancellation

An order can stay stuck in status *Pending payment* or maybe *Failed* if a customer cancels on the payment page.
Manual payment methods typically stay  *On hold*.

In order to free the reserved stock, WooCommerce requires an operator to put the order to status *Cancelled*.

Permanently deleting an order with reserved stock via trash will not restore the stock counter. This is a WooCommerce limitation.

### Returns

Please note that the WooYellowCube currently doen't handle order returns automatically. If a return happens the payment
refund and any other relevant steps need to be made manually by the store administrator.



### Backed order creation

Backend order creation is currently not supported and such orders won't be processed by the YellowCube. If a store admin
needs to create an order on behalf of the customer it needs to be done through the public store interface.
