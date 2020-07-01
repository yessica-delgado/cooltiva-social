class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def search
    if params[:search].blank?
    redirect_to(root_path, alert: "Empty field!")
    else
    @parameter = params[:search]
    @results = Activity.where("(who_description) ILIKE ?", "%#{@parameter}%")
    end
  end
end
