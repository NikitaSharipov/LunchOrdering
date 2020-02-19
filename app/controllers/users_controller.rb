class UsersController < ApplicationController
  def index
  end

  def show
    user
  end

  def update
    if current_user.id == params[:id].to_i
      #reject{|_, v| v.blank?} - remove empty parameters if update only one field
      if current_user.update(user_params.reject{|_, v| v.blank?})
        bypass_sign_in current_user
        redirect_to user_path, notice: 'You have updated data'
      else
        redirect_to user_path, notice: current_user.errors.full_messages.to_s
      end
    else
      redirect_to user_path, notice: 'You can update only your data.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def user
    @user = User.find(params[:id])
  end
end
