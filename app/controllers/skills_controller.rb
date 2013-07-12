class SkillsController < ApplicationController
  
  def show
    @skills = Skill.find(params[:id])
 
    @skills = Skill.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skill }
     end
  end


  def index
    @skills = Skill.all
 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skills }
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def new
    @skills = Skill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skill }
    end
  end

  def create
    @skill = Skill.new( params[:skill] )
    if @skill.save
      render "show"
    else
      render "new"
    end
  end

  def destroy
    @skill = Skill.find(params[:id]) 
    @skill.destroy
    redirect_to new_skill_path
  end

end
