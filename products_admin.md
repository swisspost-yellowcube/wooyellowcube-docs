## Product management

A product that is managed by YellowCube needs to be registered first.

### Product list
The registration status of each products can be seen on the product listing page:

![](/assets/product_list_v2_marker.png)

The possible values in the YellowCube column are:

- *-*: Product is not connected to YellowCube.
- *Submitted*: An new product definition or an update was sent to YellowCube and we are waiting for confirmation. New
  products are not yet connected to YellowCube.
- *Active*: YellowCube confirmed that it received and processed the product information. Everything seems to be OK.
- *Error*: YellowCube was unable to process the product information. Check the log on the product edit page to
  learn more.

### Edit product details
Detailed information about YellowCube communication about the product is available at the bottom of the product edit page.


In order to register a product at YellowCube successfully it needs to meet the following requirements:

- *SKU*: required field, used as primary product identifier. Changes are not supported after registration at YellowCube.
  You will find it under *Product data -> Inventory*.

![](/assets/product_inventory_v2.png)

- *Weight*: in kg, required field.
  You will find it under *Product data -> Shipping*.

- *Dimensions*: in cm, not strictly required. However, it is recommended to provide this information.

- *Manage stock*: required to enable for products managed with YellowCube.

![](/assets/product_size_v2.png)

In order to trigger the registration at YellowCube you need to click *Send product to YellowCube*.
Make sure to save any article change prior to click this button as changes are lost.

For later product updates the button is later named *Update product to YellowCube*.

###  Product registration and update
![](/assets/product_yc_success_v2.png)

In the left column we can see the general status of the product.

Log of all the communication about the product can be seen in the right column.
If there were any problems you will be able to see the error messages here.

###  Disconnect from YellowCube

A product can be disconnected from YellowCube by clicking the button *Remove the link with YellowCube*.
The button is only visible for properly registered products.

### Advanced: Using EAN

You can bass *EAN* numbers to YellowCube by attaching a custom attribute named *EAN* to the product.

![](/assets/product_ean_v2.png)

### Advanced: Lot management
In order to deal with expiring products, you can enable lot management by choosing *Lot management is enabled* and
submitting a product update.

You can't deactivate lot management once it has been enabled.
Even after disconnecting the product, it needs manual delete at YellowCube to re-add it without lot management again.
Before enabling lot management you need to consider all implications of such action.
If you are unsure about that please contact Swiss Post support for more information.

### Unsupported: Multiple articles with the same SKU
WooYellowCube doesn't support using the same SKU in multiple articles or variations.
As a result, each product would have an independent stock counter and a random one would be picked for the update.
This can be a limitation with certain multilingual approaches.

### Troubleshooting Product deletion and trash

If you ever create a duplicated product with the same SKU and delete it again, reconnect the original product again
by choosing "Update to YellowCube" on the product edit page. Try to avoid duplicate SKUs whenever possible. Either
edit the product and immediately change the SKU when duplicating or later delete it for real.

It is highly recommended not to delete unique products (with distinct SKU) as it can cause errors and inconsistencies
when processing orders that contained these products. You can send the products to the product trash and keep them.
