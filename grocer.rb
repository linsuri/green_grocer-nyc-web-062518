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
  
#  new_cart = {}
#  current_item = ""
#  cart.each do |hash|
#    hash.each do |item, attribute_hash|
#      if new_cart[item] == nil
#        new_cart[item] = item
#      end
#      new_cart[item] = attribute_hash
#      new_cart[item][attribute_hash][:count] += 1
#    end  
#  end  
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
