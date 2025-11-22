package qd;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public g f13579a;

    /* renamed from: b, reason: collision with root package name */
    public g f13580b;

    public final synchronized void a(g gVar) {
        g gVar2 = this.f13580b;
        if (gVar2 != null) {
            gVar2.f13578c = gVar;
            this.f13580b = gVar;
        } else {
            if (this.f13579a != null) {
                throw new IllegalStateException("Head present, but no tail");
            }
            this.f13580b = gVar;
            this.f13579a = gVar;
        }
        notifyAll();
    }

    public final synchronized g b() {
        g gVar;
        gVar = this.f13579a;
        if (gVar != null) {
            g gVar2 = gVar.f13578c;
            this.f13579a = gVar2;
            if (gVar2 == null) {
                this.f13580b = null;
            }
        }
        return gVar;
    }

    public final synchronized g c() throws InterruptedException {
        if (this.f13579a == null) {
            wait(1000);
        }
        return b();
    }
}
