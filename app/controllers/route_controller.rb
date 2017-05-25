class RouteController < ApplicationController
  def index
      render plain: "What do you want me to say?"
  end

  def hello
      render plain: "Hello CodingDojo!"
  end

  def name
      if params[:name] == "joe"
          render plain: "Saying Hello, Joe!"
      else
          redirect_to "/say/hello"
          # I thought it made more sense to redirect to a plain hello message
          # for anyone not named Joe
      end
  end

  def say
      render plain: "Saying Hello!"
  end

  def show
      session[:number] ||= 0
      if session[:number] > 0
          render plain: "You visited this URL #{session[:number] +=1 } times."
      else
          render plain: "You visited this URL #{session[:number] +=1 } time."
      end
      #counter that adds one after every refresh
  end

  def destroy
      reset_session
      render plain: "Destroyed the session - now 0 visits."
  end
end
