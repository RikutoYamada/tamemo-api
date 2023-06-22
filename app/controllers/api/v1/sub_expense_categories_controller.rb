class Api::V1::SubExpenseCategoriesController < ApplicationController
  def index
    sub_expense_categories = SubExpenseCategory.where(user_id: params[:user_id], main_expense_category_id: params[:main_expense_category_id])
    render json: sub_expense_categories, status: :ok
  end
end
