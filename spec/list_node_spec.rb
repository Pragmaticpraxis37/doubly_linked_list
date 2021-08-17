require 'pry'
require './lib/list_node'

describe 'list node' do 
    it 'creates a list node object' do 
        ln = ListNode.new('Black-bellied Whistling-Duck')

        expect(ln.class).to eq(ListNode)
    end 

    it 'creates a doubly linked list object with attributes' do 
        ln = ListNode.new('Black-bellied Whistling-Duck')

        expect(ln.previous_node).to eq(nil)
        expect(ln.node).to eq('Black-bellied Whistling-Duck')
        expect(ln.next_node).to eq(nil)
    end 
end 