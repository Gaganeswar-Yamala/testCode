public class ClassAbcdeBad {
  public ClassAbcdeBad() {
    String unescapedstring = ApexPages.currentPage().getParameters().get('url_param');
    unescapedstring = unescapedstring + 'some';
    unescapedstring = unescapedstring + 'some1';
    unescapedstring = unescapedstring + 'some2';
    unescapedstring = unescapedstring + 'some3';
    unescapedstring = unescapedstring + 'some4';
    someOtherFunction(unescapedstring);    //Bad: this string is used elsewhere and may lead to an XSS vulnerability
    someOtherFunction(integer.valueof(unescapedstring));   //Good: the string is safely checked as an integer
  }
}
