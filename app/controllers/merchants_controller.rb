class MerchantsController < ApplicationController
  def index
    @merchant = Merchant.all
  end

  def show
    @merchant = Merchant.find_by(id: params[:id])
    render_404 unless @merchant
  end

end