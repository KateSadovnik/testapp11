class ApplicationController < ActionController::Base
	def hello
		render plain:'Hello world'
	end

	def helloworld
		render plain:'Hello world!!!!!!!!!!!'
	end
end
