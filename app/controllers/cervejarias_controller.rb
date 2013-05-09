class CervejariasController < ApplicationController
  # GET /cervejarias
  # GET /cervejarias.json
  def index
    @cervejarias = Cervejaria.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cervejarias }
    end
  end

  # GET /cervejarias/1
  # GET /cervejarias/1.json
  def show
    @cervejaria = Cervejaria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cervejaria }
    end
  end

  # GET /cervejarias/new
  # GET /cervejarias/new.json
  def new
    @cervejaria = Cervejaria.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cervejaria }
    end
  end

  # GET /cervejarias/1/edit
  def edit
    @cervejaria = Cervejaria.find(params[:id])
  end

  # POST /cervejarias
  # POST /cervejarias.json
  def create
    @cervejaria = Cervejaria.new(params[:cervejaria])

    respond_to do |format|
      if @cervejaria.save
        format.html { redirect_to @cervejaria, notice: 'Cervejaria was successfully created.' }
        format.json { render json: @cervejaria, status: :created, location: @cervejaria }
      else
        format.html { render action: "new" }
        format.json { render json: @cervejaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cervejarias/1
  # PUT /cervejarias/1.json
  def update
    @cervejaria = Cervejaria.find(params[:id])

    respond_to do |format|
      if @cervejaria.update_attributes(params[:cervejaria])
        format.html { redirect_to @cervejaria, notice: 'Cervejaria was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cervejaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cervejarias/1
  # DELETE /cervejarias/1.json
  def destroy
    @cervejaria = Cervejaria.find(params[:id])
    @cervejaria.destroy

    respond_to do |format|
      format.html { redirect_to cervejarias_url }
      format.json { head :no_content }
    end
  end
end
