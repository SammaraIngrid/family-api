class GrandparentsController < ApplicationController
  before_action :set_grandparent, only: %i[ show update destroy ]

  # GET /grandparents
  def index
    @grandparents = Grandparent.all

    render json: @grandparents
  end

  # GET /grandparents/1
  def show
    render json: @grandparent
  end

  # POST /grandparents
  def create
    @grandparent = Grandparent.new(grandparent_params)

    if @grandparent.save
      render json: @grandparent, status: :created, location: @grandparent
    else
      render json: @grandparent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grandparents/1
  def update
    if @grandparent.update(grandparent_params)
      render json: @grandparent
    else
      render json: @grandparent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grandparents/1
  def destroy
    @grandparent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grandparent
      @grandparent = Grandparent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grandparent_params
      params.permit(:family_id, :name, :surname, :birthday)
    end
end
