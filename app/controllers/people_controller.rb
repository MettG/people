class PeopleController < ApplicationController
	helper_method :full_name
	def index
		@people = Person.all
  end

	def show
		@person = Person.find(params[:id])
  end

	def new
		@person = Person.new
	end
	
	def create
		@person = Person.new(people_params)
 
		if @person.save
			redirect_to people_path
		else
			render :new
		end
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
		@person = Person.find(params[:id])

		if @person.update(people_params)
			redirect_to people_path
		else
			render :edit
		end
	end

	def destroy
		Person.find(params[:id]).destroy
  	redirect_to pages_path
	end

	def full_name
		@person.first_name + " " + @person.last_name
	end

	private

   def people_params
     params.require(:person).permit(:first_name, :last_name, :server, :title, :age, :rank, :role, :free_agent)
   end

end
