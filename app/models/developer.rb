class Developer < ActiveRecord::Base
  validates :slug, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def add_star!
    update!(stars: stars + 1)
  end
end