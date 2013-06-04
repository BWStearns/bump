class LoesController < ApplicationController
  # GET /loes
  # GET /loes.json
  def index
    @loes = Loe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @loes }
    end
  end

  # GET /loes/1
  # GET /loes/1.json
  def show
    @loe = Loe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loe }
    end
  end

  # GET /loes/new
  # GET /loes/new.json
  def new
    @loe = Loe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @loe }
    end
  end

  # GET /loes/1/edit
  def edit
    @loe = Loe.find(params[:id])
  end

  # POST /loes
  # POST /loes.json
  def create
    @loe = Loe.new(params[:loe])

    respond_to do |format|
      if @loe.save
        format.html { redirect_to @loe, notice: 'Loe was successfully created.' }
        format.json { render json: @loe, status: :created, location: @loe }
      else
        format.html { render action: "new" }
        format.json { render json: @loe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /loes/1
  # PUT /loes/1.json
  def update
    @loe = Loe.find(params[:id])

    respond_to do |format|
      if @loe.update_attributes(params[:loe])
        format.html { redirect_to @lo, notice: 'Loe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @loe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loes/1
  # DELETE /loes/1.json
  def destroy
    @loe = Loe.find(params[:id])
    @loe.destroy

    respond_to do |format|
      format.html { redirect_to loes_url }
      format.json { head :no_content }
    end
  end
end
