class RegistrationsController < Devise::RegistrationsController

    before_action :one_admin_registered?, only: [:new, :create]
    
    protected
    #allows only one admin
    def one_admin_registered?
      if Admin.count > 1
        if admin_signed_in?
          redirect_to root_path 
        else
          redirect_to new_admin_session_path, notice: "Signup denied. User limit reached" 
        end
      end  
    end
  
  end