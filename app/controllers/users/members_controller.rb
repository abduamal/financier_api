class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: { message: "Yay, you're in!" }
  end
end
