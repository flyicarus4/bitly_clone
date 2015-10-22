require 'byebug'
class Url < ActiveRecord::Base
	validates :original_url, presence: true
	def self.shorten
		[*('a'..'z'),*('0'..'9')].shuffle[0,8].join
	end

	def self.add_count(looker)
		@add = Url.find_by(short_url: looker)
		@add.click_count += 1
		@add.save
	end
end
