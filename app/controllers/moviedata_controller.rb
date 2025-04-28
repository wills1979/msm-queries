class MoviedataController < ApplicationController
  def directors

    @director_list = Director.all

    render({ :template => "movie_templates/directors"}) 
  end

  def director_details
    director_id = params.fetch("director_id")

    @director = Director.where({:id => director_id}).at(0)

    @filmography = Movie.where( {:director_id => director_id})

    render({ :template => "movie_templates/director_details"}) 
  end
end
