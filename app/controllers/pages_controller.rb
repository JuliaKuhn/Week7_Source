class PagesController < ApplicationController
  def home
    redirect_to items_path if is_logged_in?
  end
end
