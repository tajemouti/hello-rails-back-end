class Api::V1::GreetingsController < ApplicationController
  def index
    render json: { greeting: Greeting.order("RANDOM()").first.content }
  end
end
