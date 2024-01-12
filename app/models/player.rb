class Player < ApplicationRecord
  belongs_to :game
  after_initialize :init_scores
  before_update :score_total
  # before_save :calculate_scores

  def bonus
    total = (self.one || 0) +
    (self.two || 0) +
    (self.three || 0) +
    (self.four || 0) +
    (self.five || 0) +
    (self.six || 0)
    total >= 63 ? 35 : 0
  end

  def scorebonus
    scorebonus = 63 - ((self.one || 0) +
    (self.two || 0) +
    (self.three || 0) +
    (self.four || 0) +
    (self.five || 0) +
    (self.six || 0))
  end

  private

  def init_scores
    self.one ||= nil
    self.two ||= nil
    self.three ||= nil
    self.four ||= nil
    self.five ||= nil
    self.six ||= nil
    self.triple ||= nil
    self.quadriple ||= nil
    self.full ||= nil
    self.small ||= nil
    self.long ||= nil
    self.chance ||= nil
    self.yams ||= nil
    self.score ||= nil
  end

  def score_total
    self.score = (self.one || 0) +
                 (self.two || 0) +
                 (self.three || 0) +
                 (self.four || 0) +
                 (self.five || 0) +
                 (self.six || 0) +
                 (self.triple || 0) +
                 (self.quadriple || 0) +
                 (self.full || 0) +
                 (self.small || 0) +
                 (self.long || 0) +
                 (self.chance || 0) +
                 (self.yams || 0) +
                 bonus
  end






  # CALCULER 1,2,3,4,5 X
  # def calculate_scores
  #   self.one = one.to_i * 1
  #   self.two = two.to_i * 2
  #   self.three = three.to_i * 3
  #   self.four = four.to_i * 4
  #   self.five = five.to_i * 5
  #   self.six = six.to_i * 6
  #   # Repeat similar calculations for other fields
  # end

end
