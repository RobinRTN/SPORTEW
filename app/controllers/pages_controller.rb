class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index ]

  def home
    if current_user.try(:type) == 'Club'
      render 'clubs/_home-club.html.erb'
    elsif current_user.try(:type) == 'Joueur'
      render 'players/_home-player.html.erb'
    elsif current_user.try(:type) == 'Coach'
      render 'teachers/_home-teacher.html.erb'
    else
      render 'pages/_landingpage'
    end
  end

  def index
  end
end



# if current_user.type == 'Club'
#   render 'clubs/_home-club.html.erb'
# elsif current_user.type == 'Joueur'
#   render 'players/_home-player.html.erb'
# elsif current_user.type == 'Coach'
#   render 'teachers/_home-teacher.html.erb'
# else
#   render 'pages/_landingpage'
# end
