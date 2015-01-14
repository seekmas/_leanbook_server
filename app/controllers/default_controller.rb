class DefaultController < ApplicationController
  before_action :authenticate_admin!, only: [:index]


  def index
  end

  def catalog

    @categories = Category.all

    render layout: 'bootstrap'
  end

  def list_all
    @articles = Article.where(:category_id => params[:id]).order(:id => :desc).all

    render layout: 'bootstrap'
  end

end
