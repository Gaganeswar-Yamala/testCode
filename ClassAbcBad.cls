public class ClassAbcBad {
  public ClassAbcBad() {
    String unescapedstring = ApexPages.currentPage().getParameters().get('url_param');
    someOtherFunction(unescapedstring);    //Bad: this string is used elsewhere and may lead to an XSS vulnerability
    someOtherFunction(integer.valueof(unescapedstring));   //Good: the string is safely checked as an integer  
  }
}