class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :sort_column, :sort_direction

  def sort_column
    model_class.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

end
