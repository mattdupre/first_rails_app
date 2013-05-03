class NewProjectsController < ApplicationController
  # GET /new_projects
  # GET /new_projects.json
  def index
    @new_projects = NewProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_projects }
    end
  end

  # GET /new_projects/1
  # GET /new_projects/1.json
  def show
    @new_project = NewProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_project }
    end
  end

  # GET /new_projects/new
  # GET /new_projects/new.json
  def new
    @new_project = NewProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_project }
    end
  end

  # GET /new_projects/1/edit
  def edit
    @new_project = NewProject.find(params[:id])
  end

  # POST /new_projects
  # POST /new_projects.json
  def create
    @new_project = NewProject.new(params[:new_project])

    respond_to do |format|
      if @new_project.save
        format.html { redirect_to @new_project, notice: 'New project was successfully created.' }
        format.json { render json: @new_project, status: :created, location: @new_project }
      else
        format.html { render action: "new" }
        format.json { render json: @new_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_projects/1
  # PUT /new_projects/1.json
  def update
    @new_project = NewProject.find(params[:id])

    respond_to do |format|
      if @new_project.update_attributes(params[:new_project])
        format.html { redirect_to @new_project, notice: 'New project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_projects/1
  # DELETE /new_projects/1.json
  def destroy
    @new_project = NewProject.find(params[:id])
    @new_project.destroy

    respond_to do |format|
      format.html { redirect_to new_projects_url }
      format.json { head :no_content }
    end
  end
end
