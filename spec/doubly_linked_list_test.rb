require 'pry'
require './lib/doubly_linked_list'

describe 'doubly linked list' do 
    it 'creates a doubly linked list object' do 
        dll = DoublyLinkedList.new('Black-bellied Whistling-Duck')

        expect(dll.class).to eq(DoublyLinkedList)
    end 
end 