class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = params[:name] ? Product.where("name like ?", "%" + params[:name] + "%") : Product.order(:name)
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
