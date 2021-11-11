class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']
  def show
    puts 'Today is Wednesday'
    @product_count =  Product.count
    @category_count = Category.count
    puts @product_count
    puts @category_count
  end
end
