# 📌 Difference between Function Parameters and Arguments in C++

| Aspect        | Parameters 📥 | Arguments 📤 |
|---------------|----------------|--------------|
| **Definition** | Variables defined in the function declaration or function header. | Values or variables passed to the function when it is called. |
| **Purpose**   | Act as placeholders for the data the function will use. | Provide the actual data for the function to work with. |
| **Where Used** | When defining the function. | When calling the function. |
| **Example**    | `void add(int a, int b);`<br>a and b are parameters. | `add(5, 10);`<br>5 and 10 are arguments. |

---

# 🔥 Quick Code Example:

```cpp
#include <iostream>
using namespace std;

// Parameters: x and y
void add(int x, int y) {
    cout << "Sum: " << x + y << endl;
}

int main() {
    // Arguments: 5 and 3
    add(5, 3);
    return 0;
}
```
`int x, int y` → **Parameters** (inside function definition)

`5, 3` → **Arguments** (when calling the function)

---

🎯 **Simple Memory Tip:**

- **Parameters** = Placeholders
- **Arguments** = Actual values
