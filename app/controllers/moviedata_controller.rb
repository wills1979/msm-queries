class MoviedataController < ApplicationController
  def directors

    @director_list = Director.all

    render({ :template => "movie_templates/directors"}) 
  end

  def director_details
    director_id = params.fetch("director_id")

    @director = Director.where({:id => director_id}).at(0)
    @director_name = @director.name

    @filmography = Movie.where( {:director_id => director_id})

    render({ :template => "movie_templates/director_details"}) 
  end

  def youngest_director

    @youngest_director = Director.where.not({ :dob => nil }).order(:dob).last

    render({ :template => "movie_templates/youngest_director" })

  end

  def eldest_director

    @eldest_director = Director.where.not({ :dob => nil }).order(:dob).first

    render({ :template => "movie_templates/eldest_director" })

  end

  def movies

    @movie_list = Movie.all

    render({ :template => "movie_templates/movies"}) 

  end

  def movie_details
    movie_id = params.fetch("movie_id")
    @movie = Movie.where({:id => movie_id}).at(0)
    
    render({ :template => "movie_templates/movie_details"}) 
  end

end
