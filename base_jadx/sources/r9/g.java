package r9;

/* loaded from: classes2.dex */
public abstract class g extends a {
    public g(p9.d<Object> dVar) {
        super(dVar);
        if (dVar != null) {
            if (!(dVar.getContext() == p9.g.f12870a)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // p9.d
    public p9.f getContext() {
        return p9.g.f12870a;
    }
}
