extension StringExtension on String {
  ///transform your string to [upperCase]
  ///eg.
  ///var newString = 'string need to transform uppercase'.upperCase
  ///result:
  /// STRING NEED TO TRANSFORM UPPERCASE.

  String get upperCase {
    if (this == null || this.length == 0)
      return '';
    else
      return this.toUpperCase();
  }

  ///transform your string to [capitalizeFirsWord]
  ///eg.
  ///var newString = 'string need to transform'.capitalizeFirsWord
  ///result:
  /// String need to transform

  String get capitalizeFirsWord {
    if (this == null || this.length == 0)
      return '';
    else
      return this[0].toUpperCase() + this.substring(1).toLowerCase();
  }

  ///transform your string to [capitalizeFirsWordOfEach]
  ///eg.
  ///var newString = 'string need to transform'.capitalizeFirsWordOfEach
  ///result:
  /// String Need To Transform

  String get capitalizeFirsWordOfEach {
    if (this == null || this.length == 0)
      return '';
    else
      return this.split(" ").map((str) => str.capitalizeFirsWord).join(" ");
  }

  ///transform your string to [lowerCase]
  ///eg.
  ///var newString = 'STRING NEED TO TRANSFORM LOWERCASE'.lowerCase
  ///result:
  /// string need to transform lowercase.

  String get lowerCase {
    if (this == null || this.length == 0)
      return '';
    else
      return this.toLowerCase();
  }

  ///remove extra space from string [removeBlankSpace]
  ///eg.
  ///var newString = '  I am deepak   '.removeBlankSpace
  ///result:
  /// I am deepak

  String get removeBlankSpace {
    if (this == null || this.length == 0)
      return '';
    else
      return this.trim();
  }

  ///check whether your string is numeric or not [isNumeric]
  ///eg.
  ///var numeric =null.isNumeric            =>   false;
  ///var numeric =''.isNumeric              =>   false;
  ///var numeric ='a'.isNumeric             =>   false;
  ///var numeric ='Ab'.isNumeric            =>   false;
  ///var numeric ='ac0811'.isNumeric        =>   false;
  ///var numeric ='0811aqs'.isNumeric       =>   false;
  ///var numeric ='08'.isNumeric            =>   true;
  ///var numeric ='-11'.isNumeric           =>   true;
  ///var numeric ='08.11'.isNumeric         =>   true;

  bool get isNumeric {
    if (this == null || this.length == 0)
      return false;
    else
      return double.tryParse(this) != null;
  }

  ///check whether your string is isAlphaNumeric or not [isAlphaNumeric]
  ///eg.
  ///var alphaNumeric =null.isAlphaNumeric            =>   false;
  ///var alphaNumeric =''.isAlphaNumeric              =>   false;
  ///var alphaNumeric ='a'.isAlphaNumeric             =>   false;
  ///var alphaNumeric ='Ab12'.isAlphaNumeric            =>   true;

  bool get isAlphaNumeric {
    if (this == null || this.length == 0)
      return false;
    else
      return this.contains(new RegExp(r'[0-9]'));
  }

  ///check whether your string is has at least one lowercase [containLowerCase]
  ///eg.
  ///var has =null.containLowerCase            =>   false;
  ///var has =''.containLowerCase              =>   false;
  ///var has ='a'.containLowerCase             =>   true;
  ///var has ='Ab12'.containLowerCase            =>   true;
  ///var has ='AV'.containLowerCase            =>   false;

  bool get containLowerCase {
    if (this == null || this.length == 0)
      return false;
    else
      return this.contains(new RegExp(r'[a-z]'));
  }

  ///check whether your string is has at least one uppercase [containUpperCase]
  ///eg.
  ///var has =null.containUpperCase            =>   false;
  ///var has =''.containUpperCase              =>   false;
  ///var has ='a'.containUpperCase             =>   false;
  ///var has ='Ab12'.containUpperCase            =>   true;
  ///var has ='AV'.containUpperCase            =>   true;

  bool get containUpperCase {
    if (this == null || this.length == 0)
      return false;
    else
      return this.contains(new RegExp(r'[A-Z]'));
  }

  ///check whether your string is email or not [isEmail]
  ///validate your string is email or not.
  ///eg.
  ///var email = 'deepak.com'.isEmail => false.
  ///var email = 'someone@example.com'.isEmail => true.
  ///

  bool get isEmail {
    if (this == null || this.length == 0)
      return false;
    else
      return new RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this);
  }

  ///check whether your string is url or not [isUrl]
  ///validate your string is isUrl or not.
  ///eg.
  ///var url = 'deepak.com'.isUrl  => false;
  ///var url = 'http://deepak.com'.isUrl  => true;
  ///var url = 'https://deepak.com'.isUrl  => true;
  ///var url = 'https://www.deepak.com'.isUrl  => true;
  ///var url = 'www.deepak.com'.isUrl  => false;

  bool get isUrl {
    if (this == null || this.length == 0)
      return false;
    else
      return Uri.tryParse(this).isAbsolute ?? false;
  }

  ///compare two string whether they are equal or not [isEqual]
  /// var isEqual = null.isEqual('Example'); => false
  /// var isEqual = ''.isEqual('Example'); => false
  /// var isEqual = 'example'.isEqual('Example'); => false
  /// var isEqual = 'example'.isEqual('example'); => true
  /// result
  /// false;

  bool isEqual(String other) {
    if (this == null || this.length == 0)
      return false;
    else
      return this == '$other';
  }

  ///compare two string without checking case whether they are equal or not [isEqualIgnoreCase]
  /// var isEqual = null.isEqualIgnoreCase('example'); =>false
  /// var isEqual = ''.isEqualIgnoreCase('example'); =>false
  /// var isEqual = 'example'.isEqualIgnoreCase('example'); =>true
  /// var isEqual = 'example'.isEqualIgnoreCase('example'); =>true
  /// var isEqual = 'example'.isEqualIgnoreCase('Example'); => true
  /// result
  /// true;

  bool isEqualIgnoreCase(String other) {
    if (this == null || this.length == 0)
      return false;
    else
      return this.toLowerCase() == '$other'.toLowerCase();
  }

  ///counts the number of occurrences of one String in another [countMatches]
  /// var count = null.countMatches('example'); =>0
  /// var count = ''.countMatches('example'); =>0
  /// var count = 'This is example'.countMatches('example'); =>1
  /// var count = 'This is example with two example'.countMatches('example'); =>2
  /// var count = 'This is example with two Example'.countMatches('example'); =>1
  int  countMatches(String other) {
    if (this == null || this.length == 0)
      return 0;
    else{
      int count=0;
      this.split(' ').forEach((element) {
        if(element.isEqual(other)){
          count++;
        }
      });
      return count;
    }
  }

  ///counts the number of occurrences of one String in another  [countMatchesIgnoreCase]
  /// var count = null.countMatchesIgnoreCase('example'); =>0
  /// var count = ''.countMatchesIgnoreCase('example'); =>0
  /// var count = 'This is example'.countMatchesIgnoreCase('example'); =>1
  /// var count = 'This is example with two example'.countMatchesIgnoreCase('example'); =>2
  /// var count = 'This is example with two Example'.countMatchesIgnoreCase('example'); =>2
  int  countMatchesIgnoreCase(String other) {
    if (this == null || this.length == 0)
      return 0;
    else{
      int count=0;
      this.split(' ').forEach((element) {
        if(element.lowerCase.isEqual(other.lowerCase)){
          count++;
        }
      });
      return count;
    }
  }
}
