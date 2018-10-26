class ToppagesController < ApplicationController
    def index
      @task = current_user.tasks.build
      @tasks = current_user.tasks.order('created_at DESC').page(params[:page])
    end
end
