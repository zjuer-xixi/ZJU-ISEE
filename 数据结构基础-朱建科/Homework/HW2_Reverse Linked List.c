List Reverse( List L )
{
    if (L == NULL || L->Next == NULL) {
        // If the list is empty or has only one element, it's already reversed.
        return L;
    }

    // Initialize pointers for the previous, current, and next nodes.
    Position prev = NULL;
    Position current = L->Next;
    Position next = NULL;

    while (current != NULL) {
        // Store the next node.
        next = current->Next;
        
        // Reverse the current node by pointing it to the previous node.
        current->Next = prev;

        // Move the pointers forward.
        prev = current;
        current = next;
    }

    // Update the header to point to the new first node (previously the last node).
    L->Next = prev;

    return L;
}

