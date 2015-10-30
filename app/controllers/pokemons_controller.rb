class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find_by(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def show
		@pokemon = Pokemon.find(params([:id]))
  	end	

	def damage
		@pokemon = Pokemon.find_by(params[:id])
		@pokemon.health -= 10
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(params[:trainer])
	end

    def new
    	@pokemon = Pokemon.new
    end


    def poke_params
    	params.require(:pokemon).permit(:name)
    end

	def create
		@pokemon = Pokemon.create(poke_params)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1
		if @pokemon.save
			redirect_to trainer_path(id:current_trainer.id)
		else
			flash[:error] = "Please enter a valid name"
			redirect_to pokemons_new_path
		end
  	end

end
