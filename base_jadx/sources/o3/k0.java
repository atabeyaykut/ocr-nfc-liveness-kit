package o3;

/* loaded from: classes.dex */
public final /* synthetic */ class k0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11156a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11157b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11158c;

    public /* synthetic */ k0(h5.v vVar, h5.k kVar, int r32) {
        this.f11156a = r32;
        this.f11158c = vVar;
        this.f11157b = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h5.r rVar;
        h5.z zVar;
        switch (this.f11156a) {
            case 1:
                Object obj = this.f11157b;
                boolean zK = ((h5.k) obj).k();
                Object obj2 = this.f11158c;
                if (zK) {
                    ((h5.z) ((h5.r) obj2).f6856d).s();
                    return;
                }
                try {
                    ((h5.z) ((h5.r) obj2).f6856d).r(((h5.b) ((h5.r) obj2).f6855c).c((h5.k) obj));
                    return;
                } catch (h5.i e10) {
                    e = e10;
                    rVar = (h5.r) obj2;
                    if (e.getCause() instanceof Exception) {
                        zVar = (h5.z) rVar.f6856d;
                        e = (Exception) e.getCause();
                    } else {
                        zVar = (h5.z) rVar.f6856d;
                    }
                    zVar.q(e);
                    return;
                } catch (Exception e11) {
                    e = e11;
                    rVar = (h5.r) obj2;
                    zVar = (h5.z) rVar.f6856d;
                    zVar.q(e);
                    return;
                }
            case 2:
                synchronized (((h5.r) this.f11158c).f6855c) {
                    Object obj3 = ((h5.r) this.f11158c).f6856d;
                    if (((h5.f) obj3) != null) {
                        Exception excH = ((h5.k) this.f11157b).h();
                        r3.r.i(excH);
                        ((h5.f) obj3).e(excH);
                    }
                }
                return;
            default:
                v7.m mVar = (v7.m) this.f11157b;
                Runnable runnable = (Runnable) this.f11158c;
                r3.r.l(mVar.f18279d.getAndSet(Thread.currentThread()) == null);
                try {
                    runnable.run();
                    mVar.f18279d.set(null);
                    mVar.b();
                    return;
                } catch (Throwable th2) {
                    try {
                        mVar.f18279d.set(null);
                        mVar.b();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
        }
    }

    public /* synthetic */ k0(Object obj, Object obj2) {
        this.f11156a = 3;
        this.f11157b = obj;
        this.f11158c = obj2;
    }
}
