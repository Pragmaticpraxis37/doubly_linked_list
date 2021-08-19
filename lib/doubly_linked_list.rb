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
    end

    def retrieve_list_data_as_hash
        result = {}
        number = 1 
        
        list = @head

        while list.next_node != nil do 
            result[number] = list.node 

            number += 1 
            list = list.next_node
        end 

        result[number] = @tail.node
        
        result 
    end 
end 