## Product management

A product that is managed by YellowCube needs to be registered first.

The registration status of each products can be seen on the product listing page:

![](/assets/product_list_v2_marker.png)

The possible values in the YellowCube column are:

- *Submitted*: An new product definition or an update was sent to YellowCube and we are waiting for confirmation. New
  products are not yet connected to YellowCube.
- *Active*: YellowCube confirmed that it received and processed the product information. Everything seems to be OK.
- *Error*: YellowCube was unable to process the product information. Check the log on the product edit page to
  learn more.

Detailed information about YellowCube communication about the product is available at the bottom of the product edit page.


In order to register a product at YellowCube successfully it needs to meet the following requirements:

- *SKU*: required field, used as primary product identifier. Changes are not supported after registration at YellowCube.
  You will find it under *Product data -> Inventory*.

![](/assets/product_sku.png)

- *Weight*: in kg, required field.
  You will find it under *Product data -> Shipping*.

- *Dimensions*: in cm, not strictly required. However, it is recommended to provide this information.

![](/assets/product_size.png)

Immediately after the product has been created and published its information will be sent to YellowCube.


![](/assets/product_edit.png)

Log of all the communication about the product can be seen in the right column. If there were any problems you will be able
to see the error messages here.

In the left column we can see the general status of the product (similar to the status info in the product listing), we can
activate LOT management, force re-sending of the product information and remove the product from YellowCube entirely.

You can't deactivate LOT management once it has been enabled. Before doing so you need to consider all implications of such
action. If you are unsure about that please contact Swiss Post support for more information.
