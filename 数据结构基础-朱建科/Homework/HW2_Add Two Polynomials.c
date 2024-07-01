void AddNode(Polynomial *head, Polynomial *tail, Polynomial p)
{
	if(*head == NULL)
		*head = p;
	else 
		(*tail)->Next = p;
	*tail = p;
} 
void AddList(Polynomial *head, Polynomial *tail, Polynomial p){
	while(p != NULL){
        AddNode(head, tail, p);
    	p = p->Next;
    }
}
Polynomial Add( Polynomial a, Polynomial b )
{
    Polynomial p1 = a->Next, p2 = b->Next;
    Polynomial s, head, tail, p3;
    head = NULL; tail = NULL;
    s = (Polynomial)malloc(sizeof(struct Node));
    
	while (p1 != NULL && p2 != NULL){
        p3 = (Polynomial)malloc(sizeof(struct Node));
        
        if(p1->Exponent > p2->Exponent){
            p3->Exponent = p1->Exponent;
            p3->Coefficient = p1->Coefficient;
            p3->Next = NULL;
            AddNode(&head, &tail, p3);
            p1 = p1->Next;
            continue;
        }else if(p1->Exponent < p2->Exponent){
            p3->Exponent = p2->Exponent;
            p3->Coefficient = p2->Coefficient;
            p3->Next = NULL;
            AddNode(&head, &tail, p3);
            p2 = p2->Next;
            continue;
        }else if((p1->Exponent == p2->Exponent) && (p1->Coefficient + p2->Coefficient) != 0){
            p3->Exponent = p1->Exponent;
            p3->Coefficient = p1->Coefficient + p2->Coefficient;
            p3->Next = NULL;
            AddNode(&head, &tail, p3);
            p1 = p1->Next;
            p2 = p2->Next;
            continue;
        }else{
            p1 = p1->Next;
            p2 = p2->Next;
        }
    }
    
    if(p1==NULL && p2==NULL){
        s->Next = head;
        return s;
    }else if(p1==NULL && p2 != NULL){
        AddList(&head, &tail, p2);
        s->Next = head;
        return s;
    }else if(p2==NULL && p1 != NULL){
        AddList(&head, &tail, p1);
        s->Next = head;
        return s;
    }
}
