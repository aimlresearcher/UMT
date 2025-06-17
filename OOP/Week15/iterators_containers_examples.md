
# 20 Examples on Iterators and Containers in C++

Here are **20 examples** on **Iterators and Containers in C++**. These examples cover the use of iterators with different STL containers like vectors, lists, sets, maps, and more.

### 1. **Vector: Using Iterator to Traverse**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {10, 20, 30, 40};

    for (vector<int>::iterator it = vec.begin(); it != vec.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

### 2. **Vector: Using Reverse Iterator**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {10, 20, 30, 40};

    for (vector<int>::reverse_iterator it = vec.rbegin(); it != vec.rend(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

### 3. **List: Using Iterator**
```cpp
#include <iostream>
#include <list>
using namespace std;

int main() {
    list<int> lst = {1, 2, 3, 4, 5};

    for (list<int>::iterator it = lst.begin(); it != lst.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

### 4. **List: Inserting Elements with Iterator**
```cpp
#include <iostream>
#include <list>
using namespace std;

int main() {
    list<int> lst = {10, 20, 30};
    list<int>::iterator it = lst.begin();
    ++it; // Move iterator to second element
    lst.insert(it, 15); // Insert 15 before second element

    for (int i : lst) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 5. **Set: Using Iterator**
```cpp
#include <iostream>
#include <set>
using namespace std;

int main() {
    set<int> s = {10, 20, 30, 40};

    for (set<int>::iterator it = s.begin(); it != s.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

### 6. **Set: Using Reverse Iterator**
```cpp
#include <iostream>
#include <set>
using namespace std;

int main() {
    set<int> s = {10, 20, 30, 40};

    for (set<int>::reverse_iterator it = s.rbegin(); it != s.rend(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

### 7. **Map: Using Iterator**
```cpp
#include <iostream>
#include <map>
using namespace std;

int main() {
    map<string, int> m = {{"Alice", 25}, {"Bob", 30}, {"Charlie", 35}};

    for (map<string, int>::iterator it = m.begin(); it != m.end(); ++it) {
        cout << it->first << ": " << it->second << endl;
    }

    return 0;
}
```

### 8. **Map: Using Const Iterator**
```cpp
#include <iostream>
#include <map>
using namespace std;

int main() {
    map<string, int> m = {{"Alice", 25}, {"Bob", 30}, {"Charlie", 35}};

    for (map<string, int>::const_iterator it = m.cbegin(); it != m.cend(); ++it) {
        cout << it->first << ": " << it->second << endl;
    }

    return 0;
}
```

### 9. **Unordered Set: Using Iterator**
```cpp
#include <iostream>
#include <unordered_set>
using namespace std;

int main() {
    unordered_set<int> us = {10, 20, 30, 40};

    for (unordered_set<int>::iterator it = us.begin(); it != us.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

### 10. **Unordered Map: Using Iterator**
```cpp
#include <iostream>
#include <unordered_map>
using namespace std;

int main() {
    unordered_map<string, int> um = {{"Alice", 25}, {"Bob", 30}, {"Charlie", 35}};

    for (unordered_map<string, int>::iterator it = um.begin(); it != um.end(); ++it) {
        cout << it->first << ": " << it->second << endl;
    }

    return 0;
}
```

### 11. **Deque: Using Iterator**
```cpp
#include <iostream>
#include <deque>
using namespace std;

int main() {
    deque<int> deq = {10, 20, 30, 40};

    for (deque<int>::iterator it = deq.begin(); it != deq.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    return 0;
}
```

### 12. **Vector: Modifying Elements Using Iterator**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {1, 2, 3, 4};

    for (vector<int>::iterator it = vec.begin(); it != vec.end(); ++it) {
        *it += 5; // Add 5 to each element
    }

    for (int i : vec) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 13. **List: Erasing Elements Using Iterator**
```cpp
#include <iostream>
#include <list>
using namespace std;

int main() {
    list<int> lst = {10, 20, 30, 40};

    list<int>::iterator it = lst.begin();
    ++it; // Move iterator to second element
    lst.erase(it); // Remove second element

    for (int i : lst) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 14. **Vector: Using Iterator to Find an Element**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {10, 20, 30, 40};

    vector<int>::iterator it = find(vec.begin(), vec.end(), 30);
    if (it != vec.end()) {
        cout << "Element found: " << *it << endl;
    } else {
        cout << "Element not found" << endl;
    }

    return 0;
}
```

### 15. **List: Using Iterator to Find an Element**
```cpp
#include <iostream>
#include <list>
using namespace std;

int main() {
    list<int> lst = {10, 20, 30, 40};

    list<int>::iterator it = find(lst.begin(), lst.end(), 30);
    if (it != lst.end()) {
        cout << "Element found: " << *it << endl;
    } else {
        cout << "Element not found" << endl;
    }

    return 0;
}
```

### 16. **Set: Using Iterator to Find an Element**
```cpp
#include <iostream>
#include <set>
using namespace std;

int main() {
    set<int> s = {10, 20, 30, 40};

    set<int>::iterator it = s.find(30);
    if (it != s.end()) {
        cout << "Element found: " << *it << endl;
    } else {
        cout << "Element not found" << endl;
    }

    return 0;
}
```

### 17. **Map: Erasing Elements Using Iterator**
```cpp
#include <iostream>
#include <map>
using namespace std;

int main() {
    map<string, int> m = {{"Alice", 25}, {"Bob", 30}, {"Charlie", 35}};

    map<string, int>::iterator it = m.find("Bob");
    if (it != m.end()) {
        m.erase(it); // Remove the element with key "Bob"
    }

    for (const auto& p : m) {
        cout << p.first << ": " << p.second << endl;
    }

    return 0;
}
```

### 18. **Deque: Using Iterator to Modify Elements**
```cpp
#include <iostream>
#include <deque>
using namespace std;

int main() {
    deque<int> deq = {1, 2, 3, 4};

    for (deque<int>::iterator it = deq.begin(); it != deq.end(); ++it) {
        *it *= 2; // Double each element
    }

    for (int i : deq) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 19. **Vector: Using Iterator with `insert` Method**
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> vec = {1, 2, 3, 4};
    vector<int>::iterator it = vec.begin() + 2; // Iterator to the third element
    vec.insert(it, 99); // Insert 99 before the third element

    for (int i : vec) {
        cout << i << " ";
    }
    cout << endl;

    return 0;
}
```

### 20. **List: Using Iterator to Reverse the List**
```cpp
#include <iostream>
#include <list>
using namespace std;

int main() {
    list<int> lst = {1, 2, 3, 4};

    list<int>::reverse_iterator it = lst.rbegin();
    while (it != lst.rend()) {
        cout << *it << " ";
        ++it;
    }
    cout << endl;

    return 0;
}
```

---

These examples demonstrate how to use iterators with various STL containers like vectors, lists, sets, maps, and deques. They cover common operations like traversal, insertion, deletion, modification, and searching.

Let me know if you need further clarifications or more examples!
