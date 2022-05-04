class SearchController < ApplicationController
  def create
    if params[:initial_date] == ""
      initial_date = Date.new(1,1,1)
    else
      initial_date = params[:initial_date].to_date
    end

    if params[:final_date] == ""
      final_date = Date.today
    else
      final_date = params[:final_date].to_date
    end

    @results = []

    ProjectStatus.all.each do |project_status|
      transiton_date = project_status.tansition_date.to_date
      if initial_date <= transiton_date and transiton_date <= final_date
          @results.push(project_status)       
      end
    end

  end
end
