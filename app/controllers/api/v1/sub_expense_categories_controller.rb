class Api::V1::SubExpenseCategoriesController < ApplicationController
  def index
    administrator = User.where(is_admin: true).first
    default_sub_categories = SubExpenseCategory.where(user_id: administrator.id, main_expense_category_id: params[:main_expense_category_id])
    custom_expense_categories = SubExpenseCategory.where(user_id: params[:user_id], main_expense_category_id: params[:main_expense_category_id])
    sub_categories = default_sub_categories.or(custom_expense_categories)
    render json: sub_categories, status: :ok
  end
end
