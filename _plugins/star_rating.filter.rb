######################################################################
# A filter plugin for Jekyll to display ratings as a series
# of nought to five star images.
#---------------------------------------------------------------------
# License:
# Copyright (c) 2011, Lawrence Woodman
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or 
# without modification, are permitted provided that the following 
# conditions are met:
#
#    * Redistributions of source code must retain the above 
#      copyright notice, this list of conditions and the following 
#      disclaimer.
#    * Redistributions in binary form must reproduce the above 
#      copyright notice, this list of conditions and the following 
#      disclaimer in the documentation and/or other materials 
#      provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS 
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE 
# COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN 
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
# POSSIBILITY OF SUCH DAMAGE.
######################################################################

module Jekyll
	module Filters

		# Location of the star images from root of website
		STAR_IMAGES_LOC = "/images"

		# Displays the rating as a series of stars
		def star_rating(rating)

			wholeStars = rating.floor
			halfStar = (rating - wholeStars == 0.5 ? 1 : 0)
			clearStars = 5 - (wholeStars + halfStar)

			htmlOutput = "<img src=\"#{STAR_IMAGES_LOC}/star_filled.png\" alt=\"#{rating}/5.0\" \>"
			(wholeStars-1).times do
				htmlOutput += "<img src=\"#{STAR_IMAGES_LOC}/star_filled.png\" alt=\"\" \>"
			end

			if (halfStar == 1)
				htmlOutput += "<img src=\"#{STAR_IMAGES_LOC}/star_half.png\" alt=\"\" \>"
			end

			clearStars.times do
				htmlOutput += "<img src=\"#{STAR_IMAGES_LOC}/star_clear.png\" alt=\"\" \>"
			end

			return %Q{#{htmlOutput}}
		end
	end
end
