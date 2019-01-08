require_relative "linked_list.rb"

# You have two numbers represented by a linked list, where each node 
# contains a single digit. The digits are stored in reverse order, such 
# that the 1 's digit is at the head of the list. Write a function that 
# adds the two numbers and returns the sum as a linked list.

# EXAMPLE
# Input:(7-> 1 -> 6) + (5 -> 9 -> 2). That is, 617 + 295. 
# Output:2 -> 1 -> 9. That is, 912.

@string = ""
def sum_lists node_a, node_b
  sum = node_a.data + node_b.data if !node_a.nil? && !node_b.nil?
  if (sum.to_i > 10)
    single = sum - 10
    @string.prepend("#{single}")
    if node_a.next
      node_a.next.data = node_a.next.data + 1
    else
      node_b.next.data = node_b.next.data + 1
    end
    
  else 
    @string.prepend("#{sum}")
  end

  if node_a && node_b.nil?
    while node_a
      @string.prepend("#{node_a.data}")
      node_a = node_a.next
    end
  elsif node_a.nil? && node_b
    while node_b
      @string.prepend("#{node_b.data}")
      node_b = node_b.next
    end
  end
  sum_lists node_a.next, node_b.next if !node_a.nil? && !node_b.nil?
  @string.to_i
end

linked_list_a = LinkedList.new [7,1,6,4]
linked_list_b = LinkedList.new [5,9,2]

p sum_lists linked_list_a.head, linked_list_b.head