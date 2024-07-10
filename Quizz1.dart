/*

```dart
bool check(x) {
  if (x % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
```
*/

//? make this function more readable
//? you are allowed to create other functions as well.

bool check(x) {
  return _isEven(x);
}

bool _isEven(x) {
  return x % 2 == 0;
}
