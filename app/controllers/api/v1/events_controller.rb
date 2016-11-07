class Api::V1::EventsController < ApplicationController
 #  http_basic_authenticate_with :name => "myfinance", :password => "credit123"

 #  skip_before_filter :authenticate_user! # we do not need devise authentication here
 #  before_filter :fetch_user, :except => [:index, :create]

 # def fetch_user
 #    @user = User.find_by_id(params[:id])
 #  end

  before_action :set_event, only: [:show, :edit, :update, :destroy, :image]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    respond_to do |format|
      format.json { render json: @events }
      format.xml { render xml: @events }
    end

  end

  # GET /events/1
  # GET /events/1.json
  def show
    respond_to do |format|
      format.json { render json: @event }
      format.xml { render xml: @event }
    end  	
  end

  # def image
  #   send_data(@event.image, type: 'image/png', disposition: 'inline')
  # end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.json { render :show, status: :created, location: @event }
        format.xml { render xml: @event, status: :created }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.xml { render xml: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.json { head :no_content, status: :ok }
        format.xml { head :no_content, status: :ok }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.xml { render xml: @event.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    respond_to do |format|
    	if @event.destroy
        format.json { head :no_content, status: :ok }
        format.xml { head :no_content, status: :ok }
	     else
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.xml { render xml: @event.errors, status: :unprocessable_entity }	     	
	     end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params      
      params.required(:event).permit(:name, :description, :image, :phone_number, :directions_url, :location, :address, :city, :state, :zip_code, :end_date, :start_date, :end_time, :start_time)
    end
end

