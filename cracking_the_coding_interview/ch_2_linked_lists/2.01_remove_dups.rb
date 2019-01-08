require_relative "linked_list.rb"

# Write code to remove duplicates from an unsorted linked list.

def remove_dups linked_list
  visited = {}
  current = linked_list.head
  previous = nil

  while current
    if visited[current.data]
      previous.next = current.next
    else
      visited[current.data] = true
      previous = current
    end
    current = current.next
  end

  linked_list
end

linked_list = LinkedList.new [1,4,5,4,3,4,5,5]
p remove_dups(linked_list).to_s