class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    # @episode = Episode.find(params[:id])
    # @guests = @episode.episode_guests.all
    @episode_guest = EpisodeGuest.new 
  end

end
