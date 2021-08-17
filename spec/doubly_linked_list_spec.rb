require 'pry'
require './lib/list_node'
require './lib/doubly_linked_list'

describe 'doubly linked list' do 
    it 'creates a doubly linked list object' do 
        ln = ListNode.new('Black-bellied Whistling-Duck')

        dll = DoublyLinkedList.new(ln)

        expect(dll.class).to eq(DoublyLinkedList)
        expect(dll.head.class).to eq(ListNode)
    end 
end 