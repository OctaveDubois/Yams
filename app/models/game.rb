class Game < ApplicationRecord
  has_many :players, dependent: :destroy
  accepts_nested_attributes_for :players, reject_if: :all_blank, allow_destroy: true





end
