## Order management

When relevant orders are created they will be sent to YellowCube as soon as they have been payed. If
the customer used a payment method that requires manual intervention this will be triggered once admin
has changes the status of the order to "*Processing*".

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

Detailed information about YellowCube communication about the order is available at the bottom of the order edit page.

![](/assets/order_info_v2_crop.png)

The status of the order and the tracking information (if available) are displayed on the left.

Log of all the communication about the order can be seen in the right column. If there were any problems you will be able
to see the error messages here.

### Returns

Please note that the WooYellowCube currently doen't handle order returns automatically. If a return happens the payment
refund and any other relevant steps need to be made manually by the store administrator.

### Backed order creation

Backend order creation is currently not supported and such orders won't be processed by the YellowCube. If a store admin
needs to create an order on behalf of the customer it needs to be done through the public store interface.
