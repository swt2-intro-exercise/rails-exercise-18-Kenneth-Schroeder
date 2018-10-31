class Paper < ApplicationRecord
	has_and_belongs_to_many :authors
	validates :title, presence: true
	validates :venue, presence: true
	validates :year, presence: true
	validates :year, numericality: true
	scope :created_in, ->(year) { where("year = ?", year) } 
end
