package g2;

/* loaded from: classes.dex */
public final class f implements c {
    public final String a(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }
}
