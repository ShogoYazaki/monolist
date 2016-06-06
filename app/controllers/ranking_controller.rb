class RankingController < ApplicationController
  def want
     item_ids = Want.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
     @items = item_ids.map{|id| Item.find(id)}
  end

  def have
     item_ids = Have.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
     @items = item_ids.map{|id| Item.find(id)}
  end
end