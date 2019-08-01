class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

  RAITINGS = {
    'one star': '1_star',
    'two star': '2_star',
    'three star': '3_star',
    'four star': '4_star',
    'five star': '5_star'
  }

  def humanized_rating
    RAITINGS.invert[self.rating]
  end
end
