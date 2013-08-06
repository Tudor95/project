class StationController < ApplicationController
  
  def index
    @stations = Station.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stations }
    end
  end
  
  def new  
    @station = Station.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @station }
    end
  end
  
  def edit
    @station = Station.find(params[:id])
  end

  def show 
    @station = Station.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @station }
    end
  end
  
  def update
    @station = Station.find(params[:id])

    respond_to do |format|
      if @station.update_attributes(params[:station])
        format.html { redirect_to @statioon, notice: 'Station was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def compare  
  end
  
  def destroy
    @station = Station.find(params[:id])
    @station.destroy

    respond_to do |format|
      format.html { redirect_to station_url }
      format.json { head :no_content }
    end
  end

end
