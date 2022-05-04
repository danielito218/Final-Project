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

    ProjectStatus.all.sort_by{|p| p.tansition_date}.each do |project_status|
      transiton_date = project_status.tansition_date.to_date
      checker = []
      if not checker.include?(project_status.project.id)
        if initial_date <= transiton_date and transiton_date <= final_date
            @results.push(project_status)      
            checker.push(project_status.project.id) 
        end
      end
    end

  end
end
