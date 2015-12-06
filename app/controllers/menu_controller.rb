class MenuController < ApplicationController
  def index
    @sections = %w[Breakfast Lunch Dinner Drinks]
    @section = params[:section] || 'Breakfast'
    @search = params[:search] || ''
    @sort = params[:sort] || {}
    @items = MenuItem.where(section: @section).where('lower(name) like ?', "%#{@search.downcase}%").order("#{@sort['field']} #{@sort['order']}")
  end
end
