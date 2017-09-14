## Product management

Information about the product will be sent to YellowCube upon creation. In order for this to be successful
you need to make sure that all the required information is populated:

- *SKU*: required field, YellowCube won't be able to process your orders if you skip it. You will find it
  under *Product data -> Inventory*.

![](/assets/product_sku.png)

- *Weight*: required field, YellowCube won't be able to process your orders if you skip it You will find it
  under *Product data -> Shipping*.

- *Dimensions*: Not strictly required. However, it is recommended to provide this information.

![](/assets/product_size.png)

Immediately after the product has been created and published its information will be sent to YellowCube. The status
of the product can be seen in the general product listing:

![](/assets/product_list.png)

The possible values in the YellowCube column are:

- *Product sent to YellowCube*: Product info was sent to YellowCube, but we didn't get any reply yet. Product is not
  considered conntected to YellowCube yet.
- *Received*: YellowCube confirmed that it received and processed the product information. Everything seems to be OK.
- *Waiting response*: An update was sent to YellowCube and we are waiting for confirmation. Product is already connected
  with YellowCube.
- *Invalid ART*: YellowCube was unable to process the product information. Check the log on the product edit page to
  learn more.

Detailed information about YellowCube communication about the product is available at the bottom of the product edit page.

![](/assets/product_edit.png)

Log of all the communication about the product can be seen in the right column. If there were any problems you will be able
to see the error messages here.

In the left column we can see the general status of the product (similar to the status info in the product listing), we can
activate LOT management, force re-sending of the product information and remove the product from YellowCube entirely.

You can't deactivate LOT management once it has been enabled. Before doing so you need to consider all implications of such
action. If you are unsure about that please contact Swiss Post support for more information.
