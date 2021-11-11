class Admin::CategoriesController < ApplicationController
  
    http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']
    
    def index
      puts 'in index 2222'
      puts ENV['ADMIN_USER']
      @category = Category.order(id: :asc).all
    end
  
    def new
      @category = Category.new
    end
  
    def create
      @category = Category.new(category_params)
  
      if @category.save
        redirect_to [:admin, :categories], notice: 'Category created!'
      else
        render :new
      end
    end
    private
    
    def category_params
      params.require(:product).permit(
        :name,
        :update_at,
        :created_at
      )
    end
  

  
end
