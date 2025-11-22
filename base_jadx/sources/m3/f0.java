package m3;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class f0 extends g0 {

    /* renamed from: e, reason: collision with root package name */
    public final Callable f9947e;

    public /* synthetic */ f0(p pVar) {
        super(false, null, null);
        this.f9947e = pVar;
    }

    @Override // m3.g0
    public final String a() {
        try {
            return (String) this.f9947e.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
