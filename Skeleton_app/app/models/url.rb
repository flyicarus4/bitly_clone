class Url < ActiveRecord::Base
	def self.shorten
		[*('a'..'z'),*('0'..'9')].shuffle[0,8].join
	end
end
