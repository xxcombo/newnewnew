class DomitoriesController < ApplicationController
  before_action :set_domitory, only: [:show, :edit, :update, :destroy]

  # GET /domitories or /domitories.json
  def index
    @domitories = Domitory.all
  end

  # GET /domitories/1 or /domitories/1.json
  def show
  end

  # GET /domitories/new
  def new
    @domitory = Domitory.new
  end

  # GET /domitories/1/edit
  def edit
  end

  # POST /domitories or /domitories.json
  def create
    @domitory = Domitory.new(domitory_params)

    respond_to do |format|
      if @domitory.save
        format.html { redirect_to @domitory, notice: "Domitory was successfully created." }
        format.json { render :show, status: :created, location: @domitory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @domitory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /domitories/1 or /domitories/1.json
  def update
    respond_to do |format|
      if @domitory.update(domitory_params)
        format.html { redirect_to @domitory, notice: "Domitory was successfully updated." }
        format.json { render :show, status: :ok, location: @domitory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @domitory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /domitories/1 or /domitories/1.json
  def destroy
    @domitory.destroy
    respond_to do |format|
      format.html { redirect_to domitories_url, notice: "Domitory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_domitory
      @domitory = Domitory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def domitory_params
      params.require(:domitory).permit(:title, :description, :post_type_cd)
    end
end
