class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin1"
  def show
  end
end
