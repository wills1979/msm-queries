Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "moviedata", :action => "directors" })

  get("/directors/youngest", { :controller => "moviedata", :action => "youngest_director" })

  get("/directors/eldest", { :controller => "moviedata", :action => "eldest_director" })

  get("/directors/:director_id", { :controller => "moviedata", :action => "director_details" })

  get("/movies", { :controller => "moviedata", :action => "movies" })

  get("/movies/:movie_id", { :controller => "moviedata", :action => "movie_details" })

end
