class EpisodeGuestsController < ApplicationController

  def new
    @episode_guests = EpisodeGuest.create(episode_guest_params)
    episode = Episode.find(params[:id])
    guest = Guest.find(params[:id])
  end




  def episode_guest_params
    params.require(:episode_guests).permit(:guest_id, :episode_id)
  end
end
