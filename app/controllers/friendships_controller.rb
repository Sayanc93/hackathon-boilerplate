class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Successfully created friendship"
      redirect_to root_url
    else
      flash[:error] = "Unable to add friend"
      redirect_to root_url
    end
  end

  def destroy
    @friendship = Friendship.find(params[:format])
    @friendship.destroy
    flash[:notice] = "Successfully destroyed friendship"
    redirect_to root_url
  end
end
