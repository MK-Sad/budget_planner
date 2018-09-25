json.extract! expense, :id, :name, :category, :price, :date, :active, :created_at, :updated_at
json.url expense_url(expense, format: :json)
