class FavoursController < ApplicationController
  before_action :set_favour, only: %i[ show update destroy ]

  # GET /favours
  def index
    @favours = Favour.all
    # Favour.order(created_at: :desc)

    render json: @favours
  end

  # GET /favours/1
  def show
    render json: @favour
  end

  # POST /favours
  def create
    @favour = Favour.new(favour_params)

    if @favour.save
      render json: @favour, status: :created, location: @favour
    else
      render json: @favour.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favours/1
  def update
    if @favour.update(favour_params)
      render json: @favour
    else
      render json: @favour.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favours/1
  def destroy
    @favour.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favour
      @favour = Favour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favour_params
      params.require(:favour).permit(:title, :description, :location, :duration, :price)
    end
end
