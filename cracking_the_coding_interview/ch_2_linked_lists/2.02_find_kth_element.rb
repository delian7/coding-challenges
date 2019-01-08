require_relative "linked_list.rb"

# Implement an algorithm to find the kth to last element of a singly linked list.

# if the list size is known
def find_k_to_last_size_known linked_list, k
  k_to_last = linked_list.length - k
  current = linked_list.head
  k_to_last.times do
    current = current.next
  end
  current.data
end

# if the list size is NOT known
def find_k_to_last linked_list, k
  r1 = linked_list.head
  (k-1).times { r1 = r1.next }
  r2 = linked_list.head

  while r1.next
    r1 = r1.next
    r2 = r2.next
  end

  return r2.data
end

linked_list = LinkedList.new [2, 5, 3, 2, 5, 6]
p find_k_to_last linked_list, 1
