class Doughnut < ActiveRecord::Base
	validates :name, :water, :sugar, :salt, :eggs, :yeast, :filling, presence: true

	def story
		return "I made a #{name} doughnut.  It required #{water} oz of water, #{sugar} oz of sugar, #{salt} teaspoons of salt, #{eggs} eggs, #{yeast} packet(s) of yeast, then finish it off with some #{filling}."
	end

end
