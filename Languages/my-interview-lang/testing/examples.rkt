#lang racket


; #1.  Write code to remove duplicates from an unsorted linked list.

#| (

int remove(node *head, node *node) {
  if (!head || !node) {
    return 0;
  }

  if (head == node) {
    head = NULL;
    free(head);
    return
  }

  node *prev = head;
  while (prev->next != node) {
    prev = prev->next;
  }

  prev->next = node->next;

  node = NULL;
  free(node);
} // remove()


int removeDups(node *head) {
  if (!head) {
    return 0;
  }

  node *temp = head->next;

  while (temp) {
    if (head == temp) {
      remove(head, temp);
    }
    temp = temp->next;
  }

  return removeDups(head->next);
} // removeDups()

) |#