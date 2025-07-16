#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* prev;
    struct Node* next;
};

int search(struct Node* head, int x) {
    struct Node* current = head;
    int position = 1;


    while (current != NULL) {
        if (current->data == x) {
            return position; 
        }
        current = current->next;
        position++;
    }
    return -1; 
}

void printList(struct Node* node) {
    printf("Doubly Linked List: ");
    while (node != NULL) {
        printf("%d ", node->data);
        node = node->next;
    }
    printf("\n");
}

int main() {
    struct Node* head = NULL;
    struct Node* second = NULL;
    struct Node* third = NULL;

    head = (struct Node*)malloc(sizeof(struct Node));
    second = (struct Node*)malloc(sizeof(struct Node));
    third = (struct Node*)malloc(sizeof(struct Node));

    head->data = 10;
    head->prev = NULL;
    head->next = second;

    second->data = 20;
    second->prev = head;
    second->next = third;

    third->data = 30;
    third->prev = second;
    third->next = NULL;

    printList(head);

    int x = 20;
    int pos = search(head, x);
    if (pos != -1) {
        printf("Element %d found at position %d\n", x, pos);
    } else {
        printf("Element %d not found in the list\n", x);
    }

    return 0;
}
