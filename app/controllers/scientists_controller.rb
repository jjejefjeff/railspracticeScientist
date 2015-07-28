class ScientistsController < ApplicationController
  def show
    @scientist = Scientist.find_by(id: params['id'])
  end
  
  def new_sci
  end
  
  def create
    @scientist = Scientist.new
    @scientist.name = params['name']
    @scientist.imgurl = params['imgurl']
    @scientist.membersince = params['membersince']
    @scientist.description = params['description']
    @scientist.location = params['location']
    @scientist.completion = params['completion']
    if @scientist.save
      redirect_to "/profile/#{ @scientist.id }"
    else
      render 'new_sci'
    end
  end
  def edit
    @scientist = Scientist.find_by(id: params['id'])
  end
  
  def update_scientist
    @scientist = Scientist.find_by(id: params['id'])
    @scientist.name = params['name']
    @scientist.imgurl = params['imgurl']
    @scientist.membersince = params['membersince']
    @scientist.description = params['description']
    @scientist.location = params['location']
    @scientist.completion = params['completion']
    if @scientist.save
      redirect_to "/profile/#{ @scientist.id }"
    else
      render 'edit'
    end
  end
  
  def destroy
    @scientist = Scientist.find_by(id: params['id'])
    @scientist.destroy
    redirect_to "/profile"
  end
  
  def index
    @scientists = Scientist.all
  end
end