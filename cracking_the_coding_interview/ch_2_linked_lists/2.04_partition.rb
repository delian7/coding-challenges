require_relative "linked_list.rb"

# Write code to partition a linked list around a value x, such 
# that all nodes less than x come before all nodes greater than 
# or equal to x. If x is contained within the list, the values 
# of x only need to be after the elements less than x (see below). 
# The partition element x can appear anywhere in the "right partition"; 
# it does not need to appear between the left and right partitions.

# EXAMPLE
# Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1[partition=5] 
# Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8

def partition(linked_list, x)
  left_partition = LinkedList.new
  right_partition = LinkedList.new
  current = linked_list.head

  while current
    if current.data >= x
      right_partition.append(current.data)
    else
      left_partition.append(current.data)
    end
    current = current.next
  end

  return left_partition + right_partition
end

linked_list = LinkedList.new [3,5,8,5,10,2,1]
p partition(linked_list, 1).to_s