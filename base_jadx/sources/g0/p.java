package g0;

import androidx.annotation.Nullable;
import java.util.Collections;

/* loaded from: classes.dex */
public final class p<K, A> extends a<K, A> {

    /* renamed from: i, reason: collision with root package name */
    public final A f5781i;

    public p(q0.c<A> cVar, @Nullable A a10) {
        super(Collections.emptyList());
        k(cVar);
        this.f5781i = a10;
    }

    @Override // g0.a
    public final float c() {
        return 1.0f;
    }

    @Override // g0.a
    public final A f() {
        q0.c<A> cVar = this.f5739e;
        A a10 = this.f5781i;
        return (A) cVar.a(a10, a10);
    }

    @Override // g0.a
    public final A g(q0.a<K> aVar, float f) {
        return f();
    }

    @Override // g0.a
    public final void i() {
        if (this.f5739e != null) {
            super.i();
        }
    }

    @Override // g0.a
    public final void j(float f) {
        this.f5738d = f;
    }
}
