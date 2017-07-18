class SponsorshipsController < ApplicationController

  def index
    player = Player.find(params[:players_id])
    sponsorships = player.sponsorships
    render :json => sponsorships.as_json(
    {include:
    {
      sponsor: {only: :name},
      player: {only: :name}
      }
    }
    )
  end



end
