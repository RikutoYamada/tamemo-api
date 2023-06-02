class Api::V1::ExpensesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    expenses = user.expenses.includes(:sub_expense_category)
    expenses_with_category = []
    expenses.each do |expense|
      sub_category = expense.sub_expense_category
      main_category = sub_category.main_expense_category
      expense_with_category = { id: expense.id, amount: expense.amount, expended_at: expense.expended_at, store: expense.store, sub_category: sub_category.name, main_category: main_category.name }
      expenses_with_category.push expense_with_category
    end

    render json: expenses_with_category
  end

  def create; end
end
