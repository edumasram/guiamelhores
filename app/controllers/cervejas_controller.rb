class CervejasController < ApplicationController
  # GET /cervejas
  # GET /cervejas.json
  def index
    @cervejas = Cerveja.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cervejas }
    end
  end

  # GET /cervejas/1
  # GET /cervejas/1.json
  def show
    @cerveja = Cerveja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cerveja }
    end
  end

  # GET /cervejas/new
  # GET /cervejas/new.json
  def new
    @cerveja = Cerveja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cerveja }
    end
  end

  # GET /cervejas/1/edit
  def edit
    @cerveja = Cerveja.find(params[:id])
  end

  # POST /cervejas
  # POST /cervejas.json
  def create
    @cerveja = Cerveja.new(params[:cerveja])

    respond_to do |format|
      if @cerveja.save
        format.html { redirect_to @cerveja, notice: 'Cerveja was successfully created.' }
        format.json { render json: @cerveja, status: :created, location: @cerveja }
      else
        format.html { render action: "new" }
        format.json { render json: @cerveja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cervejas/1
  # PUT /cervejas/1.json
  def update
    @cerveja = Cerveja.find(params[:id])

    respond_to do |format|
      if @cerveja.update_attributes(params[:cerveja])
        format.html { redirect_to @cerveja, notice: 'Cerveja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cerveja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cervejas/1
  # DELETE /cervejas/1.json
  def destroy
    @cerveja = Cerveja.find(params[:id])
    @cerveja.destroy

    respond_to do |format|
      format.html { redirect_to cervejas_url }
      format.json { head :no_content }
    end
  end
end
