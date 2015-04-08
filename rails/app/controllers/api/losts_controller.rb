class Api::LostsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @losts = Lost.all
    render json: @losts
  end



end
