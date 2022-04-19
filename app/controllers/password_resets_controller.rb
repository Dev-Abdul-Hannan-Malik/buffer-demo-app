class PasswordResetsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])
    PasswordMailer.with(user: @user).reset.deliver_now if @user.present?
    redirect_to root_path, notice: 'Email has been sent if the account is valid' if @user.present?
  end
end
