#include <stdio.h>
#include <stdlib.h>

// Define the structure for a node in the doubly linked list
struct Node {
    int data;
    struct Node* prev;
    struct Node* next;
};

// Function to search for an element in the doubly linked list
int search(struct Node* head, int x) {
    struct Node* current = head;
    int position = 1;

    // Traverse the list to find the element
    while (current != NULL) {
        if (current->data == x) {
            return position; // Element found
        }
        current = current->next;
        position++;
    }
    return -1; // Element not found
}

// Function to print the list from the beginning
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

    // Allocate memory for nodes
    head = (struct Node*)malloc(sizeof(struct Node));
    second = (struct Node*)malloc(sizeof(struct Node));
    third = (struct Node*)malloc(sizeof(struct Node));

    // Initialize data
    head->data = 10;
    head->prev = NULL;
    head->next = second;

    second->data = 20;
    second->prev = head;
    second->next = third;

    third->data = 30;
    third->prev = second;
    third->next = NULL;

    // Print the list
    printList(head);

    // Search for an element
    int x = 20;
    int pos = search(head, x);
    if (pos != -1) {
        printf("Element %d found at position %d\n", x, pos);
    } else {
        printf("Element %d not found in the list\n", x);
    }

    return 0;
}
