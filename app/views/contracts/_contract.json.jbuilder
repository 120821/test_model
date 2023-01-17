json.extract! contract, :id, :chain_id, :content, :address, :operator_address, :rpc_server, :created_at, :updated_at
json.url contract_url(contract, format: :json)
