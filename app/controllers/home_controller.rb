class HomeController < ApplicationController
  def index
    if logged_in?
      @tickets = Ticket.all
    end
  end
  
end
