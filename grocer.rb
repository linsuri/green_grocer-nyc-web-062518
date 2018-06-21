def consolidate_cart(cart)
  # code here
  new_cart = {}
  cart.each do |item|
		item_name = item.keys.first
		if new_cart[item_name] == nil
		  new_cart[item_name] = {
				price: item[item_name][:price],
				clearance: item[item_name][:clearance],
				count: 1
			}
		else
			new_cart[item_name][:count] += 1
		end
	end
	new_cart
end

def apply_coupons(cart, coupons)
  # code here
  coupons.each do |coupon|
    cart.each do |item_name, attribute|
      if coupon[:item] == item_name && attribute[:count] >= coupon[:num]
        cart[item_name][:count] = cart[item_name][:count] - coupon[:num]
        if cart["#{item_name} W/COUPON"] == nil
          cart["#{item_name} W/COUPON"] = {
            price: coupon[:cost],
            clearance: true,
            count: 1
          }
        else
          cart["#{item_name} W/COUPON"][:count] += 1
        end
      end
    end
  end  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
