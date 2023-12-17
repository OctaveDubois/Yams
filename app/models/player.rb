class Player < ApplicationRecord
  belongs_to :game
  after_initialize :init_scores
  before_update :score_total
  # before_save :calculate_scores



  private

  def init_scores
    self.one ||= 0
    self.two ||= 0
    self.three ||= 0
    self.four ||= 0
    self.five ||= 0
    self.six ||= 0
    self.triple ||= 0
    self.quadriple ||= 0
    self.full ||= 0
    self.small ||= 0
    self.long ||= 0
    self.chance ||= 0
    self.yams ||= 0
    self.score ||= 0
  end

  def score_total
    self.score = self.one + self.two + self.three + self.four + self.five + self.six + self.triple + self.quadriple + self.full + self.small + self.long + self.chance + self.yams
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
