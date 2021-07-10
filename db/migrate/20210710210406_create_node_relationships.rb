class CreateNodeRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :node_relationships do |t|
      t.references :parent_node, index: true, foreign_key: { to_table: :nodes }
      t.references :child_node, index: true, foreign_key: { to_table: :nodes }

      t.timestamps
    end
  end
end
