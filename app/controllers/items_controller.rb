class ItemsController < ApplicationController
  before_action :force_login

  def index
    @items = if params[:q].present?
               Item.where('lower(title) LIKE ?', '%' + params[:q].downcase + '%')
             else
               Item.all
           end
  end

  def show
    @item = Item.find(params[:id])
  end
end
