class SessionsController < ApplicationController

	def new
  end

  def create
  	user2 = User2.find_by(email: params[:session][:email].downcase)
  	if user2 && user2.authenticate(params[:session][:password])
   	  sign_in user2
      redirect_to user2
  	else
   	  flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
  	end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
