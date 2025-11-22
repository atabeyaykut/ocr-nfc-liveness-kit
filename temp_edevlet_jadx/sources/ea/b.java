package ea;

/* loaded from: classes2.dex */
public final class b extends Exception {
    public b(IllegalAccessException illegalAccessException) {
        super("Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible", illegalAccessException);
    }
}
