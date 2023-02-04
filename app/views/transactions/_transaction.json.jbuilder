json.extract! transaction, :id, :status, :date_from, :date_to, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
