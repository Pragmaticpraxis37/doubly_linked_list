require 'pry'
require './lib/list_node'
require './lib/doubly_linked_list'

describe 'doubly linked list' do 
    it 'creates a doubly linked list object' do 
        dll = DoublyLinkedList.new

        expect(dll.class).to eq(DoublyLinkedList)
    end 

    it 'can add one additional list node to the end of the list' do 
        ln_1 = ListNode.new('Black-bellied Whistling-Duck')
        ln_2 = ListNode.new('Fulvous Whistling-Duck')

        dll = DoublyLinkedList.new

        dll.add_node_to_tail(ln_1)

        expect(dll.head.node).to eq('Black-bellied Whistling-Duck')
        expect(dll.tail.node).to eq('Black-bellied Whistling-Duck')
    end 

    it 'can add multiple list nodes to the end of the list' do 
        ln_1 = ListNode.new('Black-bellied Whistling-Duck')
        ln_2 = ListNode.new('Fulvous Whistling-Duck')
        ln_3 = ListNode.new('Snow Goose')

        dll = DoublyLinkedList.new

        dll.add_node_to_tail(ln_1)

        expect(dll.head.node).to eq('Black-bellied Whistling-Duck')
        expect(dll.tail.node).to eq('Black-bellied Whistling-Duck')

        dll.add_node_to_tail(ln_2)

        expect(dll.tail.previous_node.node).to eq('Black-bellied Whistling-Duck')
        expect(dll.tail.node).to eq('Fulvous Whistling-Duck')
        expect(dll.tail.next_node).to eq(nil)

        dll.add_node_to_tail(ln_3)

        expect(dll.tail.previous_node.node).to eq('Fulvous Whistling-Duck')
        expect(dll.tail.node).to eq('Snow Goose')
        expect(dll.tail.next_node).to eq(nil)
    end 

    it 'can retrieve all data and return it in a hash' do 
        ln_1 = ListNode.new('Black-bellied Whistling-Duck')
        ln_2 = ListNode.new('Fulvous Whistling-Duck')
        ln_3 = ListNode.new('Snow Goose')

        dll = DoublyLinkedList.new

        dll.add_node_to_tail(ln_1)
        dll.add_node_to_tail(ln_2)
        dll.add_node_to_tail(ln_3)

        result = {1 => "Black-bellied Whistling-Duck", 2 => "Fulvous Whistling-Duck", 3 => "Snow Goose"}

        expect(dll.retrieve_list_data_as_hash).to eq(result)
    end 

    it 'can retrieve a node at a specific position in the doubly linked list' do 
        ln_1 = ListNode.new('Black-bellied Whistling-Duck')
        ln_2 = ListNode.new('Fulvous Whistling-Duck')
        ln_3 = ListNode.new('Snow Goose')

        dll = DoublyLinkedList.new

        dll.add_node_to_tail(ln_1)
        dll.add_node_to_tail(ln_2)
        dll.add_node_to_tail(ln_3) 

        expect(dll.data_at_position(2)).to eq('Fulvous Whistling-Duck')
        expect(dll.data_at_position(3)).to eq('Snow Goose')
    end 

    it 'can change the data in a node at a specific position in the doubly linked list' do 
        ln_1 = ListNode.new('Black-bellied Whistling-Duck')
        ln_2 = ListNode.new('Fulvous Whistling-Duck')
        ln_3 = ListNode.new('Snow Goose')

        dll = DoublyLinkedList.new

        dll.add_node_to_tail(ln_1)
        dll.add_node_to_tail(ln_2)
        dll.add_node_to_tail(ln_3) 

        dll.change_node_data("Ross's Goose", 2)

        expect(dll.data_at_position(2)).to eq("Ross's Goose")
    end 

    it 'can return the total number of nodes in the list' do 
        ln_1 = ListNode.new('Black-bellied Whistling-Duck')
        ln_2 = ListNode.new('Fulvous Whistling-Duck')
        ln_3 = ListNode.new('Snow Goose')

        dll = DoublyLinkedList.new

        dll.add_node_to_tail(ln_1)
        dll.add_node_to_tail(ln_2)
        dll.add_node_to_tail(ln_3) 

        expect(dll.number_of_nodes).to eq(3)
    end 

    it 'can return the total number of nodes at zero if the doubly linked list is empty' do 


        dll = DoublyLinkedList.new

        expect(dll.number_of_nodes).to eq(0)
    end 
end 