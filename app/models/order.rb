# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer
  validates :pstTimeOfPurchase, :gstTimeOfPurchase, presence: true
  validates :pstTimeOfPurchase, :gstTimeOfPurchase, numericality: { only_decimal: true }
end