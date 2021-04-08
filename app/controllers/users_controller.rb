class UsersController < ApplicationController
 

  def show

  end

  def create
    # Create the user from params
    @user = User.new(user_params)
    if @user.save
      Deliver the signup email
      UserNotifierMailer.send_signup_email(@user).deliver
      redirect_to(@user, :notice => 'User created')
    else
      render :action => 'new'
    end
  end
  
  def edit
   
  end
  
  

  def notenoughpoints
  end



  def deliveryinformation

  end
  def newpoints
    
  end
  def thankyou
    
  end
  def xdersgdtzshezdtfgetdgetdhfjdzrgsgw
      
  end

    def removepoints

    end
 
  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to usersshow_path(@user)
  end
  
  

  
  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :full_name, :photo, :login, :winpoints)
  end
  
  
end
