class DogsController < ApplicationController
    def index
        dogsA = Dog.all

        #@dogs = Dog.joins(:employees).group("dog_id").order("count(dog_id) asc")

        @dogs = Dog.all.sort_by{|dog| -dog.employee_count}
        

    end

    def show
        @dog = Dog.find(params[:id])
    end
end
