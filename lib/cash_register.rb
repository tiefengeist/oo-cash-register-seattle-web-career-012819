require 'pry'
class CashRegister

  attr_accessor :total, :price

  attr_reader :discount

  def initialize(discount = 0.0)
  @total = 0.0
  @discount = discount
  @cart = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price
    @total += price * quantity
    i = 0
    while i < quantity
      @cart << title
      i += 1
    end
  end

  def items
    @cart
  end

  def apply_discount
    @total *= (100.0 - @discount)/100.0
    @total = @total.to_i
      if discount == 0.0
        return "There is no discount to apply."
      end
      else
        return "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
