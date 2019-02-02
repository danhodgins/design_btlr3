class UserMailer < ApplicationMailer
  
  
  def welcome_email(user)
    @user = user 
    mail(
    # to: @user.email, 
    to: 'designbtlr@gmail.com',
    subject: 'Welcome to Design Butler HQ'
    )
  
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end
