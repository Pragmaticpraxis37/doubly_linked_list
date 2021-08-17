require 'pry'
require './lib/doubly_linked_list'

describe 'doubly linked list' do 
    it 'creates a doubly linked list object' do 
        dll = DoublyLinkedList.new('Black-bellied Whistling-Duck')

        expect(dll.class).to eq(DoublyLinkedList)
    end 

    it 'creates a doubly linked list object with attributes' do 
        dll = DoublyLinkedList.new('Black-bellied Whistling-Duck')

        expect(dll.previous_node).to eq(nil)
        expect(dll.node).to eq('Black-bellied Whistling-Duck')
        expect(dll.next_node).to eq(nil)
    end 
end 