class Ranking < ApplicationRecord
	validates :name, :rank, presence: true
	validates :name, uniqueness: true

end
