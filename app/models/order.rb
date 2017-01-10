class Order < ApplicationRecord
  has_many :carted_products
  has_many :products, through: :carted_products
  belongs_to :user

  def calculate_subtotal
    order_subtotal = 0
    carted_products.each do |product_carted|
      order_subtotal += product_carted.product.price.to_f * product_carted.quantity
    end
    order_subtotal
    # update(subtotal: order_subtotal)
  end

  def calculate_tax
    order_tax = calculate_subtotal * 0.09
    # update(tax: order_tax)
  end

  def calculate_total
    order_total = calculate_subtotal + calculate_tax
    # update(total: order_total)
  end

  def calculate_all_totals
    update(subtotal: calculate_subtotal,
      total: calculate_total,
      tax: calculate_tax)
  end

end
