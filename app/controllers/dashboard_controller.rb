class DashboardController < ApplicationController
    def monthly
        expenses = Expense.where('extract(month from date) = ?', params[:month])
        incomes = Income.where('extract(month from date) = ?', params[:month])
        incomes_amount = incomes.map {|income| income.amount}.sum
        expenses_price = expenses.map {|expense| expense.price}.sum

        @bilans = incomes_amount - expenses_price
    end

    def index
        @yearly_bilans = {}
        (1..12).each do |month|
            expenses = Expense.where('extract(month from date) = ?', month)
            incomes = Income.where('extract(month from date) = ?', month)
            incomes_amount = incomes.map {|income| income.amount}.sum
            expenses_price = expenses.map {|expense| expense.price}.sum

            @yearly_bilans[month] = incomes_amount - expenses_price
        end  
    end
    
end
