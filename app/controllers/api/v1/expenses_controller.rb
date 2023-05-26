class Api::V1::ExpensesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    expenses = user.expenses.includes(:expense_category)
    expenses_with_category = []
    expenses.each do |expense|
      sub_category = expense.expense_category
      category = sub_category.parent
      logger.debug(category.name)
      e = { amount: expense.amount, expended_at: expense.expended_at, store: expense.store, sub_category: sub_category.name, category: category.name }
      expenses_with_category.push e
    end

    render json: expenses_with_category
  end

  def create; end
end
