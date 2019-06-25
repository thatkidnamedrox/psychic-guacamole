class RidersController < ApplicationController

    def new
      @rider = Rider.new
      @rollercoasters = Rollercoaster.all
      render :new # /views/riders/new.html.erb
    end
  
    def create
      @rider = Rider.create(rider_params)
      # byebug
      if @rider.valid?
        redirect_to riders_path
      else
        flash[:error] = @rider.errors.full_messages
        @rollercoasters = Rollercoaster.all
        render :new
      end
      # redirect_to "/riders"
    end
  
    def index
      @riders = Rider.all
      render :index
    end
  
    def edit
      @rider = Rider.find(params[:id])
      render :edit
    end
  
    def update
      rider = Rider.find(params[:id])
      rider.update(rider_params)
  
      redirect_to "/riders"
    end

    def show
        @rider = Rider.find(params[:id])
        render :show
    end
  
    private 
    # STRONG PARAMS
    # MUST HAVE THIS METHOD
    def rider_params
      params.require(:rider).permit(:name, rollercoaster_ids:[])
    end
  end