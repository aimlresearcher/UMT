
# 20 Examples on Namespace in C++

Here are **20 examples** on **Namespace in C++**. These examples demonstrate various uses of namespaces, including basic usage, nested namespaces, aliasing, and handling conflicts.

### 1. **Basic Namespace Usage**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    void display() {
        cout << "Hello from MyNamespace!" << endl;
    }
}

int main() {
    MyNamespace::display();
    return 0;
}
```

### 2. **Namespace with Multiple Functions**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    void display() {
        cout << "Display Function!" << endl;
    }

    void show() {
        cout << "Show Function!" << endl;
    }
}

int main() {
    MyNamespace::display();
    MyNamespace::show();
    return 0;
}
```

### 3. **Using `using` to Avoid Prefixing**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    void display() {
        cout << "Hello from MyNamespace!" << endl;
    }
}

int main() {
    using namespace MyNamespace;  // No need to prefix with namespace
    display();
    return 0;
}
```

### 4. **Nested Namespaces**
```cpp
#include <iostream>
using namespace std;

namespace OuterNamespace {
    namespace InnerNamespace {
        void display() {
            cout << "Hello from InnerNamespace!" << endl;
        }
    }
}

int main() {
    OuterNamespace::InnerNamespace::display();
    return 0;
}
```

### 5. **Namespace Aliasing**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    void display() {
        cout << "Hello from MyNamespace!" << endl;
    }
}

namespace alias = MyNamespace;  // Alias for MyNamespace

int main() {
    alias::display();
    return 0;
}
```

### 6. **Conflict Between Namespaces**
```cpp
#include <iostream>
using namespace std;

namespace FirstNamespace {
    void display() {
        cout << "Display from FirstNamespace!" << endl;
    }
}

namespace SecondNamespace {
    void display() {
        cout << "Display from SecondNamespace!" << endl;
    }
}

int main() {
    FirstNamespace::display();
    SecondNamespace::display();
    return 0;
}
```

### 7. **Namespace with Variables**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    int x = 5;
}

int main() {
    cout << "Value of x from MyNamespace: " << MyNamespace::x << endl;
    return 0;
}
```

### 8. **Global and Local Variables with Same Name**
```cpp
#include <iostream>
using namespace std;

int x = 10;  // Global variable

namespace MyNamespace {
    int x = 5;  // Local variable in namespace
}

int main() {
    cout << "Global x: " << ::x << endl;
    cout << "Namespace x: " << MyNamespace::x << endl;
    return 0;
}
```

### 9. **Using `namespace` in a Function**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    void display() {
        cout << "Hello from MyNamespace in function!" << endl;
    }
}

int main() {
    MyNamespace::display();
    return 0;
}
```

### 10. **Combining Multiple Namespaces**
```cpp
#include <iostream>
using namespace std;

namespace FirstNamespace {
    void display() {
        cout << "FirstNamespace Function!" << endl;
    }
}

namespace SecondNamespace {
    void display() {
        cout << "SecondNamespace Function!" << endl;
    }
}

int main() {
    FirstNamespace::display();
    SecondNamespace::display();
    return 0;
}
```

### 11. **Anonymous Namespace**
```cpp
#include <iostream>
using namespace std;

namespace {
    void display() {
        cout << "This function is in an anonymous namespace!" << endl;
    }
}

int main() {
    display();
    return 0;
}
```

### 12. **Defining Constants in a Namespace**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    const int x = 100;
}

int main() {
    cout << "Constant from MyNamespace: " << MyNamespace::x << endl;
    return 0;
}
```

### 13. **Namespace for Classes**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    class MyClass {
    public:
        void display() {
            cout << "Hello from MyClass!" << endl;
        }
    };
}

int main() {
    MyNamespace::MyClass obj;
    obj.display();
    return 0;
}
```

### 14. **Namespace for Functions and Classes**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    void display() {
        cout << "Display from MyNamespace!" << endl;
    }

    class MyClass {
    public:
        void show() {
            cout << "Show from MyClass!" << endl;
        }
    };
}

int main() {
    MyNamespace::display();
    MyNamespace::MyClass obj;
    obj.show();
    return 0;
}
```

### 15. **Namespace Inside a Class**
```cpp
#include <iostream>
using namespace std;

class MyClass {
public:
    namespace NestedNamespace {
        void display() {
            cout << "Hello from NestedNamespace inside class!" << endl;
        }
    }
};

int main() {
    MyClass::NestedNamespace::display();
    return 0;
}
```

### 16. **Namespace for Overloaded Functions**
```cpp
#include <iostream>
using namespace std;

namespace MyNamespace {
    void display(int x) {
        cout << "Display with int: " << x << endl;
    }

    void display(double x) {
        cout << "Display with double: " << x << endl;
    }
}

int main() {
    MyNamespace::display(10);
    MyNamespace::display(10.5);
    return 0;
}
```

### 17. **Using `namespace` in Header File**
```cpp
// File: MyNamespace.h
namespace MyNamespace {
    void display() {
        cout << "Hello from MyNamespace!" << endl;
    }
}

// File: main.cpp
#include "MyNamespace.h"

int main() {
    MyNamespace::display();
    return 0;
}
```

### 18. **Nested Namespace Aliasing**
```cpp
#include <iostream>
using namespace std;

namespace OuterNamespace {
    namespace InnerNamespace {
        void display() {
            cout << "Hello from InnerNamespace!" << endl;
        }
    }
}

namespace alias = OuterNamespace::InnerNamespace;

int main() {
    alias::display();
    return 0;
}
```

### 19. **Using `namespace` to Avoid Name Conflict**
```cpp
#include <iostream>
using namespace std;

namespace FirstNamespace {
    int x = 10;
}

namespace SecondNamespace {
    int x = 20;
}

int main() {
    cout << "FirstNamespace x: " << FirstNamespace::x << endl;
    cout << "SecondNamespace x: " << SecondNamespace::x << endl;
    return 0;
}
```

### 20. **Using `namespace` to Group Related Functions**
```cpp
#include <iostream>
using namespace std;

namespace MathOperations {
    int add(int a, int b) {
        return a + b;
    }

    int subtract(int a, int b) {
        return a - b;
    }
}

int main() {
    int sum = MathOperations::add(5, 3);
    int diff = MathOperations::subtract(5, 3);

    cout << "Sum: " << sum << ", Difference: " << diff << endl;
    return 0;
}
```

---

These examples demonstrate various uses of namespaces, from basic usage to advanced techniques like aliasing, conflict resolution, nested namespaces, and organizing related functions or variables into namespaces.

Let me know if you'd like to explore any specific examples further or need more examples!
