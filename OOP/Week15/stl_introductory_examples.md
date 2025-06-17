
# 12 Examples on Introductory STL (Standard Template Library)

Here are **12 examples** on **Introductory STL in C++**. These examples cover basic STL containers like vectors, lists, maps, and algorithms, as well as iterators.

### 1. **Vector: Basic Operations**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {1, 2, 3, 4};
    vec.push_back(5);
    vec.push_back(6);

    for (int i : vec) {
        cout << i << " ";
    }
    cout << endl;

    cout << "Size of vector: " << vec.size() << endl;

    return 0;
}
```

### 2. **Vector: Accessing Elements**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {10, 20, 30, 40};

    cout << "First element: " << vec.front() << endl;
    cout << "Last element: " << vec.back() << endl;
    cout << "Element at index 2: " << vec.at(2) << endl;

    return 0;
}
```

### 3. **List: Insertion and Deletion**
```cpp
#include <iostream>
#include <list>
using namespace std;

int main() {
    list<int> lst = {1, 2, 3, 4};

    lst.push_back(5); // Insert at the end
    lst.push_front(0); // Insert at the beginning

    lst.remove(3); // Remove all occurrences of 3

    for (int i : lst) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 4. **Deque: Basic Operations**
```cpp
#include <iostream>
#include <deque>
using namespace std;

int main() {
    deque<int> deq = {1, 2, 3};

    deq.push_back(4); // Insert at the end
    deq.push_front(0); // Insert at the beginning

    cout << "First element: " << deq.front() << endl;
    cout << "Last element: " << deq.back() << endl;

    deq.pop_front(); // Remove from the front
    deq.pop_back(); // Remove from the end

    for (int i : deq) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 5. **Set: Insertion and Searching**
```cpp
#include <iostream>
#include <set>
using namespace std;

int main() {
    set<int> s = {3, 1, 2, 4};

    s.insert(5); // Insert element
    s.insert(2); // Duplicate elements are ignored

    if (s.find(3) != s.end()) {
        cout << "Element 3 found" << endl;
    }

    for (int i : s) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 6. **Map: Basic Operations**
```cpp
#include <iostream>
#include <map>
using namespace std;

int main() {
    map<string, int> age;
    age["Alice"] = 30;
    age["Bob"] = 25;
    age["Charlie"] = 35;

    cout << "Alice's age: " << age["Alice"] << endl;
    cout << "Bob's age: " << age.at("Bob") << endl;

    for (const auto& p : age) {
        cout << p.first << ": " << p.second << endl;
    }

    return 0;
}
```

### 7. **Multiset: Storing Duplicates**
```cpp
#include <iostream>
#include <set>
using namespace std;

int main() {
    multiset<int> ms = {1, 2, 2, 3, 3, 3};

    ms.insert(4); // Insert element

    for (int i : ms) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 8. **Unordered Set: Basic Operations**
```cpp
#include <iostream>
#include <unordered_set>
using namespace std;

int main() {
    unordered_set<int> us = {1, 2, 3, 4};

    us.insert(5); // Insert element
    us.insert(3); // Duplicates are ignored

    if (us.find(4) != us.end()) {
        cout << "Element 4 found" << endl;
    }

    for (int i : us) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 9. **Stack: Using stack**
```cpp
#include <iostream>
#include <stack>
using namespace std;

int main() {
    stack<int> st;

    st.push(1); // Insert element
    st.push(2);
    st.push(3);

    cout << "Top element: " << st.top() << endl;

    st.pop(); // Remove top element

    cout << "Top element after pop: " << st.top() << endl;

    return 0;
}
```

### 10. **Queue: Using Queue**
```cpp
#include <iostream>
#include <queue>
using namespace std;

int main() {
    queue<int> q;

    q.push(1); // Insert element
    q.push(2);
    q.push(3);

    cout << "Front element: " << q.front() << endl;

    q.pop(); // Remove front element

    cout << "Front element after pop: " << q.front() << endl;

    return 0;
}
```

### 11. **Priority Queue: Max Heap**
```cpp
#include <iostream>
#include <queue>
using namespace std;

int main() {
    priority_queue<int> pq;

    pq.push(10);
    pq.push(30);
    pq.push(20);

    cout << "Top element (largest): " << pq.top() << endl;

    pq.pop(); // Remove the top element (largest)

    cout << "Top element after pop: " << pq.top() << endl;

    return 0;
}
```

### 12. **Iterator Example**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {1, 2, 3, 4, 5};

    for (vector<int>::iterator it = vec.begin(); it != vec.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

---

These examples cover introductory usage of various STL containers and data structures, such as vectors, lists, sets, maps, queues, stacks, and priority queues. The use of iterators, insertion, deletion, and searching operations are demonstrated in simple code snippets.

Let me know if you need more details or any clarifications!
