package ec;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import x9.l;

/* loaded from: classes2.dex */
public final class j extends e {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(int r22, String... formatParams) {
        super(r22, (String[]) Arrays.copyOf(formatParams, formatParams.length));
        androidx.camera.core.impl.utils.f.j(r22, "kind");
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
    }

    @Override // ec.e, vb.i
    public final /* bridge */ /* synthetic */ Collection a(lb.f fVar, ua.c cVar) {
        a(fVar, cVar);
        throw null;
    }

    @Override // ec.e, vb.i
    public final Set<lb.f> b() {
        throw new IllegalStateException();
    }

    @Override // ec.e, vb.i
    public final /* bridge */ /* synthetic */ Collection c(lb.f fVar, ua.c cVar) {
        c(fVar, cVar);
        throw null;
    }

    @Override // ec.e, vb.i
    public final Set<lb.f> d() {
        throw new IllegalStateException();
    }

    @Override // ec.e, vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        throw new IllegalStateException(this.f5246b + ", required name: " + name);
    }

    @Override // ec.e, vb.l
    public final Collection<ma.j> f(vb.d kindFilter, l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        throw new IllegalStateException(this.f5246b);
    }

    @Override // ec.e, vb.i
    public final Set<lb.f> g() {
        throw new IllegalStateException();
    }

    @Override // ec.e
    /* renamed from: h */
    public final Set c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        throw new IllegalStateException(this.f5246b + ", required name: " + name);
    }

    @Override // ec.e
    /* renamed from: i */
    public final Set a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        throw new IllegalStateException(this.f5246b + ", required name: " + name);
    }

    @Override // ec.e
    public final String toString() {
        return android.support.v4.media.a.h(new StringBuilder("ThrowingScope{"), this.f5246b, '}');
    }
}
