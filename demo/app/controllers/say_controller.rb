class SayController < ApplicationController
  def hello
    @time = Time.now()
    @greeting = "Hello"
  end

  def goodbye
  end
end
