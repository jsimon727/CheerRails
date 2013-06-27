class MediaController < ApplicationController
  before_filter :authenticate_user!
  
  
  def index
    @media = Media.new
 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @media }
    end
  end


  def display_img
    @img = Media.find(params[:id])
    send_data(@img.img, :type => @img.filetype, :filename => @img.filename,
              :disposition => 'inline')
  end

  def show
    @media = Media.find(params[:id])
    @microposts = @media.microposts.paginate(page: params[:page])
  end


  def show
  end


  def create
      @media = Media.create(params[:media])

    respond_to do |format|
      if @media.save
        format.html { redirect_to @media, notice: 'Media was successfully created.' }
        format.json { render json: @media, status: :created, location: @media }
      else
        format.html { render action: "new" }
        format.json { render json: @media.errors, status: :unprocessable_entity }
      end
    end
  end


end
