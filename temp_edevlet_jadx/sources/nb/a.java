package nb;

/* loaded from: classes2.dex */
public enum a {
    NO_ARGUMENTS((boolean) (0 == true ? 1 : 0), 3),
    /* JADX INFO: Fake field, exist only in values array */
    UNLESS_EMPTY((boolean) (1 == true ? 1 : 0), 2),
    /* JADX INFO: Fake field, exist only in values array */
    ALWAYS_PARENTHESIZED(true, true);


    /* renamed from: a, reason: collision with root package name */
    public final boolean f10692a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10693b;

    /* synthetic */ a(boolean z10, int r52) {
        this((r52 & 1) != 0 ? false : z10, false);
    }

    a(boolean z10, boolean z11) {
        this.f10692a = z10;
        this.f10693b = z11;
    }
}
