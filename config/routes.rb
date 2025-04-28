Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "moviedata", :action => "directors" })

  get("/directors/:director_id", { :controller => "moviedata", :action => "director_details" })

end
