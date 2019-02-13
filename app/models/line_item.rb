class LineItem < ApplicationRecord
  belongs_to :cookie
  belongs_to :cart

  def total_price
    cookie.price.to_i * quantity.to_i
  end
end
