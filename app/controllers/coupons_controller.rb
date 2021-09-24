class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = find_coupon
  end

  def new 
    @coupon = Coupon.new(coupon_params)
  end

  def create
  end

  private

  def find_coupon
    Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:store,)
  end


end
