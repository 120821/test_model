class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.integer :chain_id
      t.text :content
      t.string :address
      t.string :operator_address
      t.string :rpc_server

      t.timestamps
    end
  end
end
