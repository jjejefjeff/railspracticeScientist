class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @scientist = Scientist.find_by_id(params['id'])
  end
  def new_sci
  end
  
  def create
    s = Scientist.new
    s.name = params['name']
    s.imgurl = params['imgurl']
    s.membersince = params['membersince']
    s.description = params['description']
    s.location = params['location']
    s.completion = params['completion']
    s.save
    redirect_to "/profile/#{ s.id }"
  end
  
end
