class ActivitiesController < ApplicationController
    include ActivitiesHelper
    before_action :require_login, except: [:index, :show]
    
    def index
        @activities = Activity.all
    end

    def show
        @activity = Activity.find(params[:id])
    end

    def new
        @activity = Activity.new
    end

    def create
        @activity = Activity.new(activity_params)
        @activity.save
        flash.notice = "Activity '#{@activity.title}' Created!'"
        redirect_to activity_path(@activity)
    end

    def edit
        @activity = Activity.find(params[:id])
    end  

    def update
        @activity = Activity.find(params[:id])
        @activity.update(activity_params)
        flash.notice = "Activity '#{@activity.title}' Updated!"
        redirect_to activity_path(@activity)
    end

    def destroy
        @activity = Activity.find(params[:id])
        @activity.destroy 
        flash.notice = "Activity '#{@activity.title}' Deleted!"
        redirect_to activities_path
    end
end
