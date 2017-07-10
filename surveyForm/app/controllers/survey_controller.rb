class SurveyController < ApplicationController
    def index
        render "index"
    end    
    def result
        session[:count] ||= 0
        @name = params[:name]
        @location =params[:location]
        @language = params[:language]
        @comment = params[:comment]
        flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]+=1} times now."
        render "result"
    end    

end
