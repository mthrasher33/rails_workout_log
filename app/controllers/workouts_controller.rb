class WorkoutsController < ApplicationController
	before_action :find_workout, only: [:show, :edit, :update, :destroy]

def index
	@workouts = Workout.all.order("created_at DESC")
end

def show
	@workout = Workout.find(params[:id])
end


def new
	@workout = Workout.new
end

def create
	@workout = Workout.new(workout_params)
	if @workout.save
		redirect_to @workout
	else
		render "New"
	end
end

def edit
end
 


def update
	if @workout.update(workout_params)
		redirect_to @workout
	else
		render "Edit"
	end

end

def destroy
end

private

def workout_params
	params.require(:workout).permit(:workout, :date, :mood, :length)
end

def find_workout
	@workout = Workout.find(params[:id])
end


end
