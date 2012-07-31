class Tree
	attr_accessor :children, :node_name

	def initialize(data={})
		@node_name = data.keys[0]
		childrenHash = data[@node_name]
		@children = []
		childrenHash.each do |key, value|
			@children.push(Tree.new({key => value}))
		end
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new(
	{
		'grandpa' => 
			{ 
				'dad' => {'child1' => {}, 'child2'=>{}},
				'uncle' => {'child3' => {}, 'child4'=>{}}
			}
	}
	)

ruby_tree.visit_all {|n| puts n.node_name}