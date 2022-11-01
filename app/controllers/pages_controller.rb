class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def searches
    @elements = PgSearch.multisearch(params[:query]) if params[:query].present?
  end
end
