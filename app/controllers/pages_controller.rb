class PagesController < ApplicationController
    def home
        @cats = Cat.all
        @todos = Todo.all
        @users = User.all
    end
    def new
    end
    def create
        Cat.create(:name => params[:name])
        Todo.create(:created_at => params[:created_at],
                   :updated_at => params[:updated_at])
        User.create(:username => params[:username],
                    :email => params[:email],
                    :created_at => params[:created_at],
                    :updated_at => params[:updated_at],
                    :age => params[:age])
        redirect_to '/'
    end
end

