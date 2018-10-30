class Paper < ApplicationRecord
	validates :title, presence: true
	validates :venue, presence: true
	validates :year, presence: true
	validates :year, numericality: true
end
