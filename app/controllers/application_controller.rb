require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do

      @team = Team.new(params[:team])

      params[:team][:member].each do |m|
        Member.new(m)
      end

      @members = Member.all

      erb :teams
    end

end
