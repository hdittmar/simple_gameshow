class Game < ApplicationRecord
  before_create :create_code
  validates :title, presence: true
  validates :gameset_id, presence: true
  private

  def create_code
    self.code = (0...4).map { (65 + rand(26)).chr }.join.gsub("O","Q")
  end
end
