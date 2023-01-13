class RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params.require(:user).permit(:type, :email, :password, :password_confirmation)
  end

  def create
    build_resource(sign_up_params)

    if resource.save
      case resource.type
      when 'Player'
        player = Player.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], user_id: resource.id)
        player.save
      when 'Coach'
        teacher = Teacher.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], user_id: resource.id)
        teacher.save
      when 'Club'
        club = Club.new(name: params[:user][:name], user_id: resource.id)
        club.save
      end
    end
  end

end
