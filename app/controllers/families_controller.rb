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

	private

	def family_params
		params.permit(:name)
	end
end
