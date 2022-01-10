class Authentication::SessionController < ApplicationController
  def new
    @user = User.new
  end

  def create

    @user = User.find_by(email: user_params[:email])

    respond_to do |format|
      if @user.present? && @user.authenticate(user_params[:password])
        session[:user_id] = @user.id
        format.html { redirect_to '/', notice: "Article category was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
