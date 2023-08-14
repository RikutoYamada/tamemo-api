class Api::V1::ExpensesController < ApplicationController
  def index
    expenses = Expense.includes(:sub_expense_category).where(user_id: params[:user_id])
    expenses_with_category = expenses.map do |expense|
      sub_category = expense.sub_expense_category
      main_category = sub_category.main_expense_category
      {
        id: expense.id,
        amount: expense.amount,
        expended_at: expense.expended_at,
        detail: expense.detail,
        sub_category: sub_category.name,
        main_category: main_category.name
      }
    end

    render json: expenses_with_category
  end

  def create
    expense = Expense.create(
      amount: params[:amount],
      detail: params[:detail],
      expended_at: params[:expended_at],
      user_id: params[:user_id],
      sub_expense_category_id: params[:sub_expense_category_id]
    )

    render json: expense, status: :created
  end
end
