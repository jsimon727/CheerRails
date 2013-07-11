class MicropostsController < ApplicationController
  def show
    @micropost = Micropost.find(params[:id])
 
    @microposts = Micropost.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropost }
     end
  end


  def index
    @microposts = Micropost.all
 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microposts }
    end
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  def new
    @microposts = Micropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropost }
    end
  end

  def create
    @micropost = Micropost.new( params[:micropost] )
    if @micropost.save
      render "show"
    else
      render "new"
    end
  end

  def destroy
    @micropost = Micropost.find(params[:id]) 
    @micropost.destroy
    redirect_to new_micropost_path
  end

end

