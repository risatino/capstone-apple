class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :documents, through: :orders

  def currently_carted
    carted_products.where(status: "carted")
  end
end
