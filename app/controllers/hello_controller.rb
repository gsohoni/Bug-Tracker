class HelloController < ApplicationController
def index
end

def check_time
  render :text => "<br/>" + Time.now.strftime("%H:%m:%S") + "<br/>"
end

end
