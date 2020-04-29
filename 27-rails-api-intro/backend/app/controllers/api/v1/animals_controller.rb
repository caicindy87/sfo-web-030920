class Api::V1::AnimalsController < ApplicationController
	# GET /animals
	def index
		animals = Animal.all
		render json: animals
	end

	# GET /animals/:id
	def show
		animal = Animal.find(params[:id])
		render json: animal
	end

	# POST /animals
	def create
		species = Species.find_or_create_by(name: params[:species].capitalize)
		animal = Animal.new(name: params[:name], gender: params[:gender], species: species)

		if animal.save
			render json: animal
		else
			render json: {error: "The animal was not created, try again"}
		end
	end

	# DELETE /animals/:id
	def destroy

	end

	# PATCH /animals/:id
	def update

	end

	# New and Edit are now handled by the frontend
end
