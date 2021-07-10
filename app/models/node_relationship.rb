class NodeRelationship < ApplicationRecord
  belongs_to :parent_node, class_name: 'Node'
  belongs_to :child_node, class_name: 'Node', foreign_key: :child_node_id
end
