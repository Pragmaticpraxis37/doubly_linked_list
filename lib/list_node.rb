class ListNode 
    attr_accessor  :previous_node,
                    :node,
                    :next_node


    def initialize(data, previous_node = nil, next_node = nil)
        @previous_node = previous_node
        @node = data
        @next_node = next_node
    end
end 