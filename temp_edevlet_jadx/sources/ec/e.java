package ec;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import m9.v;
import m9.x;
import x9.l;

/* loaded from: classes2.dex */
public class e implements vb.i {

    /* renamed from: b, reason: collision with root package name */
    public final String f5246b;

    public e(int r22, String... formatParams) {
        androidx.camera.core.impl.utils.f.j(r22, "kind");
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
        Object[] objArrCopyOf = Arrays.copyOf(formatParams, formatParams.length);
        String str = String.format(androidx.appcompat.graphics.drawable.a.c(r22), Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        kotlin.jvm.internal.h.e(str, "format(this, *args)");
        this.f5246b = str;
    }

    @Override // vb.i
    public Set<lb.f> b() {
        return x.f10175a;
    }

    @Override // vb.i
    public Set<lb.f> d() {
        return x.f10175a;
    }

    @Override // vb.l
    public ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        String str = String.format("<Error class: %s>", Arrays.copyOf(new Object[]{name}, 1));
        kotlin.jvm.internal.h.e(str, "format(this, *args)");
        return new a(lb.f.v(str));
    }

    @Override // vb.l
    public Collection<ma.j> f(vb.d kindFilter, l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return v.f10173a;
    }

    @Override // vb.i
    public Set<lb.f> g() {
        return x.f10175a;
    }

    @Override // vb.i
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public Set c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return x5.a.r(new b(i.f5279c));
    }

    @Override // vb.i
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Set a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return i.f;
    }

    public String toString() {
        return android.support.v4.media.a.h(new StringBuilder("ErrorScope{"), this.f5246b, '}');
    }
}
