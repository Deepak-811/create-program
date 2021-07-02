# String Util

![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)    ![](https://img.shields.io/badge/pub-0.0.2-success)

A new Flutter package string util with common regex use cases. removing whitespace, is valid url, valid email, alphanumeric and more.

The String Util defines certain words related to String handling.A pure dart package.



## Features

- upperCase
- capitalizeFirsWord
- capitalizeFirsWordOfEach
- lowerCase
- removeBlankSpace
- isNumeric
- isAlphaNumeric
- containLowerCase
- containUpperCase
- isEmail
- isUrl
- isEqual(other)
- isEqualIgnoreCase(other)
- countMatches(other)
- countMatchesIgnoreCase(other)
- initials
- hasSpecialCharacters

## Installation

Install the dependencies.

```dart
dependencies:
    string_util: latest-version
```

## Import

```dart
import 'package:string_util/string_util.dart';
```

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

**initials**
```dart
var data = null.initials; =>'';
var data = ''.initials; =>'';
var data = 'null'.initials; =>N;
var data = 'Deepak'.initials; =>D;
var data = 'Deepak Gupta'.initials; =>DG;
var data = 'deepak gupta'.initials; =>DG;
```

**hasSpecialCharacters**
```dart
var has =null.hasSpecialCharacters            =>   false;
var has =''.hasSpecialCharacters              =>   false;
var has ='a'.hasSpecialCharacters             =>   false;
var has ='Ab12'.hasSpecialCharacters          =>   false;
var has ='@deepak'.hasSpecialCharacters       =>   true;
var has ='#deepak'.hasSpecialCharacters       =>   true;
```


## Bugs/Requests

If you encounter any problems please open an issue. If you feel the library is missing a feature, please raise a ticket on Github and we'll look into it.


## License

MIT License

Copyright (c) 2021 Deepak Gupta

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions :

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,

FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE

AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER

LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



