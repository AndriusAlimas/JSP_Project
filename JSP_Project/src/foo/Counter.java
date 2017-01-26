package foo;

public class Counter {
	private static int count;

	// to get one time thread increasing count number:
    public static synchronized int getCount() {
        return ++count;
    }
}
