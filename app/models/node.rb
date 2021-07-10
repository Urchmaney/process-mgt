class Node < ApplicationRecord
  has_many :node_parent_relationships, class_name: 'NodeRelationship', foreign_key: :parent_node_id
  has_many :node_children, through: :node_parent_relationships, source: :parent_node
  has_many :node_children_relationships, class_name: 'NodeRelationship', foreign_key: :child_node_id
  has_many :node_parents, through: :node_children_relationships, source: :child_node
end
