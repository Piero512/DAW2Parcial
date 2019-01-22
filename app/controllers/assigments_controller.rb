class AssigmentsController < ApplicationController
  before_action :set_assigment, only: [:show, :edit, :update, :destroy]

  # GET /assigments
  # GET /assigments.json
  def index
    @assigments = Assigment.all
  end

  # GET /assigments/1
  # GET /assigments/1.json
  def show
  end

  # GET /assigments/new
  def new
    @assigment = Assigment.new
  end

  # GET /assigments/1/edit
  def edit
  end

  # POST /assigments
  # POST /assigments.json
  def create
    @assigment = Assigment.new(assigment_params)

    respond_to do |format|
      if @assigment.save
        format.html { redirect_to @assigment, notice: 'Assigment was successfully created.' }
        format.json { render :show, status: :created, location: @assigment }
      else
        format.html { render :new }
        format.json { render json: @assigment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigments/1
  # PATCH/PUT /assigments/1.json
  def update
    respond_to do |format|
      if @assigment.update(assigment_params)
        format.html { redirect_to @assigment, notice: 'Assigment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assigment }
      else
        format.html { render :edit }
        format.json { render json: @assigment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigments/1
  # DELETE /assigments/1.json
  def destroy
    @assigment.destroy
    respond_to do |format|
      format.html { redirect_to assigments_url, notice: 'Assigment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigment
      @assigment = Assigment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assigment_params
      params.require(:assigment).permit(:member_id, :task_id)
    end
end
