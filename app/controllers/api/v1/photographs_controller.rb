class Api::V1::PhotographsController < ApplicationController
  before_action :set_photograph, only: %i[ show update destroy ]

  # GET /photographs
  def index
    @photographs = Photograph.all

    render json: @photographs
  end

  # GET /photographs/1
  def show
    render json: @photograph
  end

  # POST /photographs
  def create
    @photograph = Photograph.new(photograph_params)

    if @photograph.save
      render json: @photograph, status: :created, location: @photograph
    else
      render json: @photograph.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photographs/1
  def update
    if @photograph.update(photograph_params)
      render json: @photograph
    else
      render json: @photograph.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photographs/1
  def destroy
    @photograph.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photograph
      @photograph = Photograph.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photograph_params
      params.require(:photograph).permit(:name)
    end
end
