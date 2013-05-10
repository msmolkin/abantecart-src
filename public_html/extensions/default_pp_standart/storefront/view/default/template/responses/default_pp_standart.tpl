<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" id="checkout">
	<input type="hidden" name="cmd" value="_cart"/>
	<input type="hidden" name="upload" value="1" />
	<input type="hidden" name="business" value="<?php echo $business; ?>"/>
	<?php $i = 1; ?>
	<?php foreach ($products as $product) { ?>
	<input type="hidden" name="item_name_<?php echo $i; ?>" value="<?php echo $product['name']; ?>"/>
	<input type="hidden" name="item_number_<?php echo $i; ?>" value="<?php echo $product['model']; ?>"/>
	<input type="hidden" name="amount_<?php echo $i; ?>" value="<?php echo $product['price']; ?>"/>
	<input type="hidden" name="quantity_<?php echo $i; ?>" value="<?php echo $product['quantity']; ?>"/>
	<input type="hidden" name="weight_<?php echo $i; ?>" value="<?php echo $product['weight']; ?>"/>
	<?php $j = 0;
	foreach ($product['option'] as $option) { ?>
		<input type="hidden" name="on<?php echo $j; ?>_<?php echo $i; ?>" value="<?php echo $option['name']; ?>"/>
		<input type="hidden" name="os<?php echo $j; ?>_<?php echo $i; ?>" value="<?php echo $option['value']; ?>"/>
	<?php $j++;	} ?>
	<?php $i++; ?>
	<?php } ?>
	<?php if ($discount_amount_cart) { ?>
	<input type="hidden" name="discount_amount_cart" value="<?php echo $discount_amount_cart; ?>"/>
	<?php } ?>

	<input type="hidden" name="currency_code" value="<?php echo $currency_code; ?>"/>
	<input type="hidden" name="first_name" value="<?php echo $first_name; ?>"/>
	<input type="hidden" name="last_name" value="<?php echo $last_name; ?>"/>
	<input type="hidden" name="address1" value="<?php echo $address1; ?>"/>
	<input type="hidden" name="address2" value="<?php echo $address2; ?>"/>
	<input type="hidden" name="city" value="<?php echo $city; ?>"/>
	<input type="hidden" name="zip" value="<?php echo $zip; ?>"/>
	<input type="hidden" name="country" value="<?php echo $country; ?>"/>
	<input type="hidden" name="address_override" value="0"/>
	<input type="hidden" name="notify_url" value="<?php echo $notify_url; ?>"/>
	<input type="hidden" name="email" value="<?php echo $email; ?>"/>
	<input type="hidden" name="invoice" value="<?php echo $invoice; ?>"/>
	<input type="hidden" name="lc" value="<?php echo $lc; ?>"/>
	<input type="hidden" name="return" value="<?php echo $return; ?>"/>
	<input type="hidden" name="rm" value="2"/>
	<input type="hidden" name="no_note" value="1"/>
	<input type="hidden" name="cancel_return" value="<?php echo $cancel_return; ?>"/>
	<input type="hidden" name="paymentaction" value="<?php echo $paymentaction; ?>"/>
	<input type="hidden" name="custom" value="<?php echo $custom; ?>"/>
	<input type="hidden" name="bn" value="Abante_Cart">
</form>
<div class="buttons">
	<table>
		<tr>
			<td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'"
								class="button"><span><?php echo $button_back; ?></span></a></td>
			<td align="right"><a onclick="$('#checkout').submit();"
								 class="button"><span><?php echo $button_confirm; ?></span></a></td>
		</tr>
	</table>
</div>