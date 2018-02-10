require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/team' do

      @team = Team.new(params[:team])

      params[:member][:team].each do |m|
        Member.new(m)
      end

      @members = Member.all

      erd :teams
    end

end
