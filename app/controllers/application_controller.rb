require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :index
    end 
    
    post '/teams' do 
      @team = Team.new(name: params[:name], motto: params[motto])
      memebers = params[:team][:memebers]
      
      @super_heroes = memebers.collect do |mem_params|
        Super_hero.new({name: mem_params[:name], power: mem_params[:power], bio: mem_params[:bio]})
      end 
      erb :team 
    end 
      


end
