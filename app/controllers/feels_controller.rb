class FeelsController < ApplicationController
	def index
		@feels = Feel.all.order("created_at desc")
	end

	def show
		@feel = Feel.find(params[:id])
	end

	def new
		@feel = Feel.new
	end

	def create
		@feel = Feel.new(feel_params)
		if @feel.save
			redirect_to root_path
		else
			render: new
		end
	end

	def edit
		@feel = Feel.find(params[:id])
	end

	def update
		@feel = Feel.update(feel_params)
		if @feel.update
			redirect_to root_path
		else
			render: new
		end
	end

	def destroy
		
	end

	private

	def feel_params
		params.require(:feel).permit(:category_id, :description, :user_id, )
	end

end
