require 'securerandom'

class WelcomeController < ApplicationController

	def index
		@name = SecureRandom.hex(13)
		@result = %x(cd $LALGPATH ; python3 tw-lal-generator.py test.txt --outputFileName ../public/#{@name}.pdf 2>&1)
		@tt = "tt"
	end

end
