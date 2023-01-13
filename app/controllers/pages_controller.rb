class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index ]

  def home
  end

  def index
    if current_user.type == 'Club'
      render 'club_dashboard'
    elsif current_user.type == 'Player'
      render 'player_dashboard'
    elsif current_user.type == 'Teacher'
      render 'teacher_dashboard'
    end
  end
end
