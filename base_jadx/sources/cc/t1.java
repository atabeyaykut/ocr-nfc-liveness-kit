package cc;

/* loaded from: classes2.dex */
public enum t1 {
    INVARIANT("", true),
    IN_VARIANCE("in", false),
    OUT_VARIANCE("out", true);


    /* renamed from: a, reason: collision with root package name */
    public final String f2363a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2364b;

    t1(String str, boolean z10) {
        this.f2363a = str;
        this.f2364b = z10;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f2363a;
    }
}
