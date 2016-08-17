class StaticPagesController < ApplicationController
before_action :authenticate_user!, :except => [:home, :help, :contact, :about]
 
  def home
  end

  def help
  end

  def contact
  end

  def about
  end
 
end


