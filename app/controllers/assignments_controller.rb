class AssignmentsController < ApplicationController
  before_action :set_assigment, only: [:show, :edit, :update, :destroy]

  # GET /assigments
  # GET /assigments.json
  def index
    @assignments = Assignment.all
  end

  # GET /assigments/1
  # GET /assigments/1.json
  def show
  end

  # GET /assigments/new
  def new
    @assignment = Assignment.new
  end

  # GET /assigments/1/edit
  def edit
  end

  # POST /assigments
  # POST /assigments.json
  def create
    @assignment = Assignment.new(assigment_params)

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment, notice: 'Assigment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigments/1
  # PATCH/PUT /assigments/1.json
  def update
    respond_to do |format|
      if @assignment.update(assigment_params)
        format.html { redirect_to @assignment, notice: 'Assigment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigments/1
  # DELETE /assigments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url, notice: 'Assigment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assigment_params
      params.require(:assignment).permit(:member_id, :task_id)
    end
end
