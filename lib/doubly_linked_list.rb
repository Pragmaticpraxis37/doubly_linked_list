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

            list = list.next_node
            number += 1 
        end 

        result[number] = @tail.node
        
        result 
    end 

    def data_at_position(position)
        tracker = 1 
        data = nil 

        list = @head

        while tracker <= position do
            if tracker == position 
                return list.node 
            end 

            list = list.next_node
            tracker += 1
        end  
    end

    def change_node_data(data, position)
        tracker = 1  

        list = @head 

        while tracker <= position do
            if tracker == position 
                list.node = data 
            end 

            list = list.next_node
            tracker += 1
        end  
    end

    def number_of_nodes
        total = 0 

        if @head.nil? 
            return 0 
        else 
            list = @head
        end 

        while list.next_node != nil do

            list = list.next_node
            total += 1
        end 

        if total > 0
            total += 1
        end 
    end
end 