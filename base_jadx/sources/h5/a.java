package h5;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final q f6839a = new q();

    public final void a() {
        z zVar = (z) this.f6839a.f6852a;
        synchronized (zVar.f6872a) {
            if (zVar.f6874c) {
                return;
            }
            zVar.f6874c = true;
            zVar.f6876e = null;
            zVar.f6873b.b(zVar);
        }
    }
}
