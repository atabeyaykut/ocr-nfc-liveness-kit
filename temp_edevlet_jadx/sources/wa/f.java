package wa;

import da.m;
import ja.o;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import p4.g7;

/* loaded from: classes2.dex */
public final class f extends b {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f18842h = {w.c(new r(w.a(f.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: g, reason: collision with root package name */
    public final bc.i f18843g;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Map<lb.f, ? extends qb.w>> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f18844a = new a();

        public a() {
            super(0);
        }

        @Override // x9.a
        public final Map<lb.f, ? extends qb.w> invoke() {
            return b8.f.W(new l9.g(c.f18835a, new qb.w("Deprecated in Java")));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(cb.a aVar, g7 c10) {
        super(c10, aVar, o.a.f8383m);
        kotlin.jvm.internal.h.f(c10, "c");
        this.f18843g = c10.b().d(a.f18844a);
    }

    @Override // wa.b, na.c
    public final Map<lb.f, qb.g<?>> a() {
        return (Map) b8.f.O(this.f18843g, f18842h[0]);
    }
}
