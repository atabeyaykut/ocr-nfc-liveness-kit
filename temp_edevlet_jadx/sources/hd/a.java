package hd;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f7082a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7083b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7084c;

    /* renamed from: d, reason: collision with root package name */
    public final String f7085d;

    public a(String str, String str2, String str3, String str4) {
        this.f7082a = str;
        this.f7083b = str2;
        this.f7084c = str3;
        this.f7085d = str4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final int a(a aVar) {
        boolean zEqualsIgnoreCase = this.f7085d.equalsIgnoreCase(aVar.f7085d);
        ?? r02 = zEqualsIgnoreCase;
        if (zEqualsIgnoreCase) {
            r02 = zEqualsIgnoreCase;
            if (this.f7084c.equals(aVar.f7084c)) {
                r02 = 2;
            }
        }
        int r03 = r02;
        if (r02 == 2) {
            r03 = r02;
            if (this.f7083b.equals(aVar.f7083b)) {
                r03 = 3;
            }
        }
        if (r03 == 3 && this.f7082a.equals(aVar.f7082a)) {
            r03 = 4;
        }
        id.b.a("AndroidModel", "Score is %s for %s compared to %s", Integer.valueOf(r03), toString(), aVar);
        return r03;
    }

    public final String toString() {
        return "" + this.f7085d + ";" + this.f7084c + ";" + this.f7083b + ";" + this.f7082a;
    }
}
