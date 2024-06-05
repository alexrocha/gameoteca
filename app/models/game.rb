class Game < ApplicationRecord
  has_and_belongs_to_many :developers
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :platforms
  has_and_belongs_to_many :publishers
end
