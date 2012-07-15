class SayController < ApplicationController
	def hello
		@time = Time.now
  end

  def goodbye
    @time = Time.now
  end
end
