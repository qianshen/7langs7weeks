class Tree
	attr_accessor :children, :node_name

	def initialize(name, children=[])
		@children = children
		@node_name = name
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new("ruby", 
	[
		Tree.new("child1"),
		Tree.new("child2")
	]
	)

ruby_tree.node_name = "r2"
ruby_tree.visit_all {|n| puts n.node_name}