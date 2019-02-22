class Ranking < ApplicationRecord
	validates :name, :rank, :read, presence: true
	validates :name, uniqueness: true
end
