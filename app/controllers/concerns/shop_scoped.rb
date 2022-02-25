module ShopScoped
  extend ActiveSupport::Concern

  included do
    before_action :set_shop
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
