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

; #2 Return Kth to Last: Implement an algorithm to find the kth to last element of a singly linked list

#| (

node *kth(node *head, int k) {
  int len = 0;
  node *counter = head;
  while (counter) {
    len++;
    counter = counter->next;
  }

  for (int i = 0; i < len - k; i++) {
    head = head->next;
  }

  return head;
}// kth()
)|#

; #3 Find the sum of all of the elements in a list.

#|(
int sum(node *head) {
  int sum = 0;
  while (sum) {
    sum += head->data;
    head = head->next;
  }
  return sum;
}
)|#

;#4  Find a value in a binary tree

#|(

node *search_tree(node *root, int val) {
  if (!root || root->val == val) {
    return root;
  }

  if (val <= root->val) {
    return search_tree(root->left);
  }
  else {
    return search_tree(root->right);
}
)|#