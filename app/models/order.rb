class Order < ApplicationRecord
  belongs_to :user
  belongs_to :document

  def pretty_created_at
    created_at.strftime("%A, %b %d")
  end
end
