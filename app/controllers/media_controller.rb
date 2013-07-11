class MediaController < ApplicationController
  before_filter :authenticate_user!
  
  
  def index
    @media = Media.all
  end

  def new
    @media = Media.new
  end

  #def display_img
    #@img = Media.find(params[:media])
    #send_data(@img.img, :type => @img.filetype, :filename => @img.filename,
              #:disposition => 'inline')
  #end

  def show
    @media = Media.find(params[:media])
    @microposts = @media.microposts.paginate(page: params[:page])
  end


  def create
    @media = Media.create(params[:media])
  end


    #respond_to do |format|
      #if @media.save
        #format.html { redirect_to @media, notice: 'Media was successfully created.' }
        #format.json { render json: @media, status: :created, location: @media }
      #else
        #format.html { render action: "new" }
        #format.json { render json: @media.errors, status: :unprocessable_entity }
      #end
    #end


end
