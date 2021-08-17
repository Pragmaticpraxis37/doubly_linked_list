class DoublyLinkedList
    attr_accessor   :head,
                    :tail 
                    # :list_node

    def initialize(head = nil, tail = nil)
        @head = head 
        @tail = tail
    end

    def add_node_to_tail(node)
        if @head == nil 
            @head = node 
            @tail = node 
        else 
            node.previous_node = @tail 
            @tail.next_node = node 
            @tail = node  
        end 

        # linked_list = @head 

        # while linked_list.next_node != nil do 
        #     # binding.pry 
        #     linked_list = linked_list.next_node
        # end 

        # linked_list.next_node = node 
    end
end 