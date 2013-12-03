class LockController < ApplicationController
	layout 'landing'

	def refused
		render :action => 'login'

	end

  def unlock
    if Lock.passwords_match?(params[:password])
      session[:lock_opened] = true
      redirect_to root_path
    else
      redirect_to :action=>:login
    end
  end

end