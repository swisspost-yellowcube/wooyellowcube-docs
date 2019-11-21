## Order management

An order is relevant for YellowCube if the determined shipping zone is enabled for YellowCube.

When relevant orders are created they will be sent to YellowCube as soon as they reach the *Processing* status.

A well integrated online payment method (e.g. credit cards) will update the status either immediately or with a short delay after clearance (based on a callback).  
If the selected payment method requires manual intervention, the order remains in status *On hold* until the store admin changes it to *Processing* manually upon payment.

### Order list
The status of each orders can be seen on the order listing page:

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

### Edit Order for details

Detailed information about YellowCube communication about each order is available at the bottom of the order edit page.

![](/assets/order_info_v2_crop.png)

The status of the order and the tracking information (if available) are displayed on the left.

Log of all the communication about the order can be seen in the right column. If there were any problems you will be able
to see the error messages here.

Limitation: If an order matched by a YellowCube enabled zone contains no single article effectively managed by YellowCube, the submission fails with error "*The content of element ‘ns1:OrderPositions’ is not complete.*"

Thus if choose YellowCube with WooCommerce, it is highly recommended to register all products at YellowCube.

### Stock reservation on submission

Any order submission will reserve its articles and deduct each articles stock counter immediately.

### Proper order cancellation

An order can stay stuck in status *Pending payment* or maybe *Failed* if a customer cancels on the payment page.
Customers choosing manual payment methods in status *On hold* might change their mind about the order.
See also the official [status definition](https://docs.woocommerce.com/document/managing-orders/).

In order to free the reserved stock on cancellation, WooCommerce requires a store admin to put the order to status *Cancelled*.

Permanently deleting an order with reserved stock via trash will not restore the stock counter. This is a WooCommerce limitation.

### Stop order delivery

Once an order is submitted to YellowCube, you can not stop its delivery in WooCommerce.

A store admin can try to stop delivery by calling [calling YellowCube Support](README.md) as long as the delivery was no yet started.

Additionally, the store admin will need to manually set the status to *Cancelled* to free its stock again.

### Returns

Please note that the WooYellowCube currently doesn't handle order returns automatically. If a return happens the
affected order will remain unchanged, the payment refund and any other relevant steps need to be made manually by
the store admin. The stock increase will be visible in the stock table the next day after the refund.

### Order Completion

As soon as an order track & trace information is received, the order status is set to Completed.
An order can receive multiple track & trace numbers.

YellowCube does NOT support order splitting, it is either processed in full or not.

WooCommerce does NOT support multiple stores or a UI for order splitting.

Limitation: As a result, orders reach the completed state even if some of their products are not registered / shipped by YellowCube.

### Backed order creation

Backend order creation is supported and such orders can be force submitted to YellowCube. Force submitting is required
since the shipping zones are never matched. It might be still easier to use the public store interface to create an
order on behalf of the customer.

### Advanced: Manual order submission

Some store admins like to determine on a per order basis if they handle it on their own or pass it to YellowCube.
If YellowCube is disabled for a matched shipping zone, a store admin can still manually force submit it.

### Troubleshoot order submission errors

If the order triggers a submission error, make sure first that all products are properly registered at YellowCube by
resubmitting them with the button *Update product to YellowCube*. Then try submitting the order again.

If a product has never been sent to YellowCube before, it is skipped on order submission and expected to be manually
processed. In order to submit such a product to YellowCube, you need to create a new order after product registration.
