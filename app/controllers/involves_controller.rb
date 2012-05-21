class InvolvesController < ApplicationController
  # GET /involves
  # GET /involves.json
  def index
    @involves = Involve.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @involves }
    end
  end

  # GET /involves/1
  # GET /involves/1.json
  def show
    @involve = Involve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @involve }
    end
  end

  # GET /involves/new
  # GET /involves/new.json
  def new
    @involve = Involve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @involve }
    end
  end

  # GET /involves/1/edit
  def edit
    @involve = Involve.find(params[:id])
  end

  # POST /involves
  # POST /involves.json
  def create
    @involve = Involve.new(params[:involve])

    respond_to do |format|
      if @involve.save
        format.html { redirect_to @involve, notice: 'Involve was successfully created.' }
        format.json { render json: @involve, status: :created, location: @involve }
      else
        format.html { render action: "new" }
        format.json { render json: @involve.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /involves/1
  # PUT /involves/1.json
  def update
    @involve = Involve.find(params[:id])

    respond_to do |format|
      if @involve.update_attributes(params[:involve])
        format.html { redirect_to @involve, notice: 'Involve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @involve.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /involves/1
  # DELETE /involves/1.json
  def destroy
    @involve = Involve.find(params[:id])
    @involve.destroy

    respond_to do |format|
      format.html { redirect_to involves_url }
      format.json { head :no_content }
    end
  end
end
