class MoodsController < ApplicationController
	def index
		@moods = Mood.all.order("created_at desc")
	end

	def show
		@mood = Mood.find(params[:id])
	end

	def new
		@mood = Mood.new
	end

	def create
		@mood = Mood.new(mood_params)
		if @mood.save
			redirect_to root_path
		else
			render: new
		end
	end

	def edit
		@mood = Mood.find(params[:id])
	end

	def update
		@mood = Mood.update(mood_params)
		if @mood.update
			redirect_to root_path
		else
			render: new
		end
	end

	def destroy
		
	end

	private

	def mood_params
		params.require(:mood).permit(:stauts, :image )
	end
end
