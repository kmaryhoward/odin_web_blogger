class Tag < ApplicationRecord
	has_many :taggings
	has_many :sharks, through: :taggings

  def to_s
    name
  end
end
