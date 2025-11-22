package p4;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class s9 implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12674a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12675b;

    public /* synthetic */ s9(int r12, Object obj) {
        this.f12674a = r12;
        this.f12675b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int r02 = this.f12674a;
        Object obj = this.f12675b;
        switch (r02) {
            case 0:
                return r3.n.f14021c.a((String) obj);
            default:
                return new com.google.android.gms.internal.measurement.s6(((c5.c4) obj).f1445k);
        }
    }
}
