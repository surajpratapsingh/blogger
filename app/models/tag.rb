class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :article1s, through: :taggings
	#tags=article.taggings.collect{|tagging| tagging.tag}

end
