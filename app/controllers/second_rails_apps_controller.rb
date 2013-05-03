class SecondRailsAppsController < ApplicationController
  # GET /second_rails_apps
  # GET /second_rails_apps.json
  def index
    @second_rails_apps = SecondRailsApp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @second_rails_apps }
    end
  end

  # GET /second_rails_apps/1
  # GET /second_rails_apps/1.json
  def show
    @second_rails_app = SecondRailsApp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @second_rails_app }
    end
  end

  # GET /second_rails_apps/new
  # GET /second_rails_apps/new.json
  def new
    @second_rails_app = SecondRailsApp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @second_rails_app }
    end
  end

  # GET /second_rails_apps/1/edit
  def edit
    @second_rails_app = SecondRailsApp.find(params[:id])
  end

  # POST /second_rails_apps
  # POST /second_rails_apps.json
  def create
    @second_rails_app = SecondRailsApp.new(params[:second_rails_app])

    respond_to do |format|
      if @second_rails_app.save
        format.html { redirect_to @second_rails_app, notice: 'Second rails app was successfully created.' }
        format.json { render json: @second_rails_app, status: :created, location: @second_rails_app }
      else
        format.html { render action: "new" }
        format.json { render json: @second_rails_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /second_rails_apps/1
  # PUT /second_rails_apps/1.json
  def update
    @second_rails_app = SecondRailsApp.find(params[:id])

    respond_to do |format|
      if @second_rails_app.update_attributes(params[:second_rails_app])
        format.html { redirect_to @second_rails_app, notice: 'Second rails app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @second_rails_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_rails_apps/1
  # DELETE /second_rails_apps/1.json
  def destroy
    @second_rails_app = SecondRailsApp.find(params[:id])
    @second_rails_app.destroy

    respond_to do |format|
      format.html { redirect_to second_rails_apps_url }
      format.json { head :no_content }
    end
  end
end
