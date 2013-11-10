class TreeView < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :parent_id
  attr_accessible :ancestry
  has_ancestry
end
