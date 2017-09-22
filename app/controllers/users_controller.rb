class UsersController < ApplicationController
  attr_reader :user

  before_action :find_user, only: %i(show update)

  def index
    @users = User.all.page(params[:page]).per Settings.paginate_max
  end

  def show; end

  def update
    if user.update_attributes user_params
      flash[:success] = t "users.update_success"
      redirect_to user
    else
      render "devise/registrations/edit"
    end
  end

  private

  def user_params
    params.require(:user).permit :avatar, :name, :email
  end

  def find_user
    @user = User.find_by id: params[:id]

    return if user
    flash[:danger] = t "danger"
    redirect_to root_path
  end
end
