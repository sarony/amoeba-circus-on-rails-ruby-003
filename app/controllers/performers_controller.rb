class PerformersController < ApplicationController
  before_action :set_performer, only: [:show, :edit, :update, :split, :destroy]

  # GET /performers
  # GET /performers.json
  def index
    @performers = Performer.all
  end

  # GET /performers/1
  # GET /performers/1.json
  def show
  end

  # GET /performers/new
  def new
    @performer = Performer.new
    @talent = Talent.new
  end

  # GET /performers/1/edit
  def edit
  end

  # POST /performers
  # POST /performers.json
  def create
    @performer = Performer.new(performer_params)
    @talent = Talent.find_or_create_by(:name => params[:performer][:talent])
    @performer.talent = @talent
    if params[:act]
      params[:act].each do |act_id|
        @performer.act_performers.build(:act_id => act_id)
      end
    else
    end
    #binding.pry

    respond_to do |format|
      if @performer.save
        format.html { redirect_to @performer, notice: 'Performer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @performer }
      else
        format.html { render action: 'new' }
        format.json { render json: @performer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performers/1
  # PATCH/PUT /performers/1.json
  def update
    @talent = Talent.find_or_create_by(:name => params[:performer][:talent])
    @performer.talent = @talent
    @performer.acts.clear
    if params[:act]
      params[:act].each do |act_id|
        @performer.act_performers.build(:act_id => act_id)
      end
    else
    end

    respond_to do |format|
      if @performer.update(performer_params)
        format.html { redirect_to @performer, notice: 'Performer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @performer.errors, status: :unprocessable_entity }
      end
    end
  end

  def split
    Performer.create([{:name => @performer.name, :talent => @performer.talent, :generation_number => @performer.generation_number + 1},{:name => @performer.name,:talent => @performer.talent, :generation_number => @performer.generation_number + 1} ])
    @performer.destroy
    respond_to do |format|
      format.html { redirect_to performers_url }
      format.json { head :no_content }
    end
  end

  # DELETE /performers/1
  # DELETE /performers/1.json
  def destroy
    @performer.destroy
    respond_to do |format|
      format.html { redirect_to performers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performer
      @performer = Performer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performer_params
      params.require(:performer).permit(:name, :generation_number)
    end
end
