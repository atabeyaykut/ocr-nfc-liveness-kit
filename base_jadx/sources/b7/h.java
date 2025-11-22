package b7;

/* loaded from: classes2.dex */
public final class h implements k {

    /* renamed from: a, reason: collision with root package name */
    public final h5.l<String> f1166a;

    public h(h5.l<String> lVar) {
        this.f1166a = lVar;
    }

    @Override // b7.k
    public final boolean a(Exception exc) {
        return false;
    }

    @Override // b7.k
    public final boolean b(d7.a aVar) {
        if (!(aVar.f() == 3)) {
            if (!(aVar.f() == 4)) {
                if (!(aVar.f() == 5)) {
                    return false;
                }
            }
        }
        this.f1166a.d(aVar.f4674b);
        return true;
    }
}
