class ItemsController < ApplicationController
  def index
  end

  private

  def message_params
    params.require(:item).permit(:image, :name, :price, :category_id, :status_id, :delivery_cost_id, :prefecture_id, :day_to_ship_id).merge(user_id: current_user.id)
  end
end
