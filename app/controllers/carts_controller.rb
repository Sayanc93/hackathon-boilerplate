class CartsController < ApplicationController
  def buy
    @user = current_user
  end
end
