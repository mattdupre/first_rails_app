class BigpostsController < ApplicationController
  # GET /bigposts
  # GET /bigposts.json
  def index
    @bigposts = Bigpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bigposts }
    end
  end

  # GET /bigposts/1
  # GET /bigposts/1.json
  def show
    @bigpost = Bigpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bigpost }
    end
  end

  # GET /bigposts/new
  # GET /bigposts/new.json
  def new
    @bigpost = Bigpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bigpost }
    end
  end

  # GET /bigposts/1/edit
  def edit
    @bigpost = Bigpost.find(params[:id])
  end

  # POST /bigposts
  # POST /bigposts.json
  def create
    @bigpost = Bigpost.new(params[:bigpost])

    respond_to do |format|
      if @bigpost.save
        format.html { redirect_to @bigpost, notice: 'Bigpost was successfully created.' }
        format.json { render json: @bigpost, status: :created, location: @bigpost }
      else
        format.html { render action: "new" }
        format.json { render json: @bigpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bigposts/1
  # PUT /bigposts/1.json
  def update
    @bigpost = Bigpost.find(params[:id])

    respond_to do |format|
      if @bigpost.update_attributes(params[:bigpost])
        format.html { redirect_to @bigpost, notice: 'Bigpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bigpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bigposts/1
  # DELETE /bigposts/1.json
  def destroy
    @bigpost = Bigpost.find(params[:id])
    @bigpost.destroy

    respond_to do |format|
      format.html { redirect_to bigposts_url }
      format.json { head :no_content }
    end
  end
end
