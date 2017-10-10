require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @name1 = params[:team][:members][0][:name]
      @power1 = params[:team][:members][0][:power]
      @bio1 = params[:team][:members][0][:bio]
      @name2 = params[:team][:members][1][:name]
      @power2 = params[:team][:members][1][:power]
      @bio2 = params[:team][:members][1][:bio]
      @name3 = params[:team][:members][2][:name]
      @power3 = params[:team][:members][2][:power]
      @bio3 = params[:team][:members][2][:bio]

      erb :team
    end


end
