# String Util


A new Flutter package string util with common regex use cases. removing whitespace, is valid url, valid email, alphanumeric and more.

The String Util defines certain words related to String handling.A pure dart package.


## Usage

**uppercase**

```dart
var newString = 'string need to transform uppercase'.upperCase
result:
STRING NEED TO TRANSFORM UPPERCASE.
```

**capitalizeFirsWord**

```dart
var newString = 'string need to transform'.capitalizeFirsWord
result:
 String need to transform
```

**capitalizeFirsWordOfEach**
```dart
var newString = 'string need to transform'.capitalizeFirsWordOfEach
result:
String Need To Transform
```

**lowerCase**
```dart
var newString = 'STRING NEED TO TRANSFORM LOWERCASE'.lowerCase
result:
string need to transform lowercase.
```

**removeBlankSpace**
```dart
var newString = '  Hello world   '.removeBlankSpace
result:
Hello world
```

**isNumeric**

```dart
var numeric =null.isNumeric            =>   false;
var numeric =''.isNumeric              =>   false;
var numeric ='a'.isNumeric             =>   false;
var numeric ='Ab'.isNumeric            =>   false;
var numeric ='ac0811'.isNumeric        =>   false;
var numeric ='0811aqs'.isNumeric       =>   false;
var numeric ='08'.isNumeric            =>   true;
var numeric ='-11'.isNumeric           =>   true;
var numeric ='08.11'.isNumeric         =>   true;
```

**isAlphaNumeric**
```dart
var alphaNumeric =null.isAlphaNumeric            =>   false;
var alphaNumeric =''.isAlphaNumeric              =>   false;
var alphaNumeric ='a'.isAlphaNumeric             =>   false;
var alphaNumeric ='Ab12'.isAlphaNumeric            =>   true;
```

**containLowerCase**
```dart
var has =null.containLowerCase            =>   false;
var has =''.containLowerCase              =>   false;
var has ='a'.containLowerCase             =>   true;
var has ='Ab12'.containLowerCase            =>   true;
var has ='AV'.containLowerCase            =>   false;
```

**containUpperCase**
```dart
var has =null.containUpperCase            =>   false;
var has =''.containUpperCase              =>   false;
var has ='a'.containUpperCase             =>   false;
var has ='Ab12'.containUpperCase            =>   true;
var has ='AV'.containUpperCase            =>   true;
```

**isEmail**
```dart
var email = 'deepak.com'.isEmail => false.
var email = 'someone@example.com'.isEmail => true.
```

**isUrl**
```dart
var url = 'example.com'.isUrl  => false;
var url = 'http://example.com'.isUrl  => true;
var url = 'https://example.com'.isUrl  => true;
var url = 'https://www.example.com'.isUrl  => true;
var url = 'www.example.com'.isUrl  => false;
```

**isEqual(other)**

```dart
var isEqual = null.isEqual('Example'); => false
var isEqual = ''.isEqual('Example'); => false
var isEqual = 'example'.isEqual('Example'); => false
var isEqual = 'example'.isEqual('example'); => true
```

**isEqualIgnoreCase(other)**
```dart
var isEqual = null.isEqualIgnoreCase('example'); =>false
var isEqual = ''.isEqualIgnoreCase('example'); =>false
var isEqual = 'example'.isEqualIgnoreCase('example'); =>true
var isEqual = 'example'.isEqualIgnoreCase('example'); =>true
var isEqual = 'example'.isEqualIgnoreCase('Example'); => true
```

**countMatches(other)**
```dart
var count = null.countMatches('example'); =>0
var count = ''.countMatches('example'); =>0
var count = 'This is example'.countMatches('example'); =>1
var count = 'This is example with two example'.countMatches('example'); =>2
var count = 'This is example with two Example'.countMatches('example'); =>1
```


**countMatchesIgnoreCase(other)**
```dart
var count = null.countMatchesIgnoreCase('example'); =>0
var count = ''.countMatchesIgnoreCase('example'); =>0
var count = 'This is example'.countMatchesIgnoreCase('example'); =>1
var count = 'This is example with two example'.countMatchesIgnoreCase('example'); =>2
var count = 'This is example with two Example'.countMatchesIgnoreCase('example'); =>2
```