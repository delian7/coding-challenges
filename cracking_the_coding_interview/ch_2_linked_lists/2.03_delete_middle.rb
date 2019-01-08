# Implement an algorithm to delete a node in the 
# middle (i.e., any node but the first and last node, 
# not necessarily the exact middle) of a singly linked list, 
# given only access to that node.

# Input:the node c from the linked list a->b->c->d->e->f
# Result: nothing is returned, but the new linked list looks likea->b->d->e->f

def delete_node(node)
  if node.next 
    node.data = node.next.data
    node.next = node.next.next
  else
    raise ArgumentError, 'middle not not given'
  end
end