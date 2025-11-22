package b7;

/* loaded from: classes2.dex */
public final class g implements k {

    /* renamed from: a, reason: collision with root package name */
    public final l f1164a;

    /* renamed from: b, reason: collision with root package name */
    public final h5.l<i> f1165b;

    public g(l lVar, h5.l<i> lVar2) {
        this.f1164a = lVar;
        this.f1165b = lVar2;
    }

    @Override // b7.k
    public final boolean a(Exception exc) {
        this.f1165b.c(exc);
        return true;
    }

    @Override // b7.k
    public final boolean b(d7.a aVar) {
        if (!(aVar.f() == 4) || this.f1164a.a(aVar)) {
            return false;
        }
        String str = aVar.f4676d;
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        Long lValueOf = Long.valueOf(aVar.f);
        Long lValueOf2 = Long.valueOf(aVar.f4678g);
        String strConcat = lValueOf == null ? "".concat(" tokenExpirationTimestamp") : "";
        if (lValueOf2 == null) {
            strConcat = android.support.v4.media.a.f(strConcat, " tokenCreationTimestamp");
        }
        if (!strConcat.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(strConcat));
        }
        this.f1165b.b(new a(str, lValueOf.longValue(), lValueOf2.longValue()));
        return true;
    }
}
