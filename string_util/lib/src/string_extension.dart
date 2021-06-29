
extension StringExtension on String{


  ///transform your string to [upperCase]
  ///eg.
  ///var newString = 'string need to transform uppercase'.upperCase
  ///result:
  /// STRING NEED TO TRANSFORM UPPERCASE.

  String get upperCase {
    if(this==null || this.length==0)
      return '';
    else return this.toUpperCase();
  }


  ///transform your string to [lowerCase]
  ///eg.
  ///var newString = 'STRING NEED TO TRANSFORM LOWERCASE'.lowerCase
  ///result:
  /// string need to transform lowercase.

  String get lowerCase {
    if(this==null || this.length==0)
      return '';
    else return this.toLowerCase();
  }


  ///remove extra space from string [removeBlankSpace]
  ///eg.
  ///var newString = '  I am deepak   '.removeBlankSpace
  ///result:
  /// I am deepak

  String get removeBlankSpace{
    if(this==null || this.length==0)
      return '';
    else return this.trim();
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

  bool get isNumeric{
    if(this==null || this.length==0)
      return false;
    else return double.tryParse(this)!=null;
  }


  ///check whether your string is isAlphaNumeric or not [isAlphaNumeric]
  ///eg.
  ///var alphaNumeric =null.isNumeric            =>   false;
  ///var alphaNumeric =''.isNumeric              =>   false;
  ///var alphaNumeric ='a'.isNumeric             =>   false;
  ///var alphaNumeric ='Ab12'.isNumeric            =>   true;

  bool get isAlphaNumeric{
    if(this==null || this.length==0)
      return false;
    else return this.contains(new RegExp(r'[0-9]'));
  }

  ///check whether your string is has at least one lowercase [containLowerCase]
  ///eg.
  ///var has =null.isNumeric            =>   false;
  ///var has =''.isNumeric              =>   false;
  ///var has ='a'.isNumeric             =>   true;
  ///var has ='Ab12'.isNumeric            =>   true;
  ///var has ='AV'.isNumeric            =>   false;

  bool get containLowerCase{
    if(this==null || this.length==0)
      return false;
    else return this.contains(new RegExp(r'[a-z]'));
  }


  ///check whether your string is has at least one uppercase [containUpperCase]
  ///eg.
  ///var has =null.isNumeric            =>   false;
  ///var has =''.isNumeric              =>   false;
  ///var has ='a'.isNumeric             =>   false;
  ///var has ='Ab12'.isNumeric            =>   true;
  ///var has ='AV'.isNumeric            =>   true;

  bool get containUpperCase{
    if(this==null || this.length==0)
      return false;
    else return this.contains(new RegExp(r'[A-Z]'));
  }


  ///check whether your string is email or not [isEmail]
  ///validate your string is email or not.
  ///eg.
  ///var email = 'deepak.com'.isEmail
  ///result
  ///false

  bool get isEmail{
    if(this==null || this.length==0)
      return false;
    else
      return new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);
  }


  ///check whether your string is url or not [isUrl]
  ///validate your string is isUrl or not.
  ///eg.
  ///var url = 'deepak.com'.isUrl  => false;
  ///var url = 'http://deepak.com'.isUrl  => true;
  ///var url = 'https://deepak.com'.isUrl  => true;
  ///var url = 'https://www.deepak.com'.isUrl  => true;
  ///var url = 'www.deepak.com'.isUrl  => false;

  bool get isUrl{
    if(this==null || this.length==0)
      return false;
    else
      return Uri.tryParse(this).isAbsolute??false;
  }


  ///compare two string whether they are equal or not [isEqual]
  /// var isEqual = 'deepak'.isEqual('Deepak');
  /// result
  /// false;

  bool  isEqual(String other){
    if(this==null || this.length==0)
      return false;
    else return this=='$other';
  }

  ///compare two string without checking case whether they are equal or not [isEqualIgnoreCase]
  /// var isEqual = 'deepak'.isEqualIgnoreCase('Deepak');
  /// result
  /// true;

  bool  isEqualIgnoreCase(String other){
    if(this==null || this.length==0)
      return false;
    else return this.toLowerCase()=='$other'.toLowerCase();
  }


}
