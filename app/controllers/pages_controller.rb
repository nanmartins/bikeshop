class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  # skip_before_action :authenticate_user!, :only => [:home]

  def home
    @products = Product.all
  end

  def about
  end

end
