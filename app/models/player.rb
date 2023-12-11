class Player < ApplicationRecord
  belongs_to :game
  after_initialize :init_scores
  before_update :score_total



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


end
