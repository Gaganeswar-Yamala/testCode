public class Foo {
	public Integer test1() {
		return Integer.valueOf(ApexPages.currentPage().getParameters().get('foo'));
	}		
}