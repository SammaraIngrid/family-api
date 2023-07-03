class FamiliesController < ApplicationController
  def index
    @families = Family.order(created_at: :desc)

    render json: @families
  end

  def create
    @families = Family.new(family_params)

    if @families.save
      render json: @families, status: :created
    else
      render json: @families.errors, status: :unprocessable_entity
    end
  end

  def show 
    @family = Family.find(params[:id])

    render json: @family
  end

  def update
    @family = Family.find(params[:id])

    if @family.update(family_params)
      render json: @family
    else 
      render json: @family.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @family = Family.find(params[:id])
    @family.destroy

    head :ok
  end

  private

  def family_params
    params.permit(:name)
  end
end
