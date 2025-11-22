package wd;

import ed.e;
import ed.h;
import java.io.IOException;
import l8.p;
import l8.w;
import rc.a0;
import rc.t;
import rc.y;
import ud.f;

/* loaded from: classes2.dex */
public final class b<T> implements f<T, a0> {

    /* renamed from: b, reason: collision with root package name */
    public static final t f18887b;

    /* renamed from: a, reason: collision with root package name */
    public final p<T> f18888a;

    static {
        t.f.getClass();
        f18887b = t.a.a("application/json; charset=UTF-8");
    }

    public b(p<T> pVar) {
        this.f18888a = pVar;
    }

    @Override // ud.f
    public final a0 a(Object obj) throws IOException {
        e eVar = new e();
        this.f18888a.c(new w(eVar), obj);
        h content = eVar.n();
        a0.f14383a.getClass();
        kotlin.jvm.internal.h.f(content, "content");
        return new y(f18887b, content);
    }
}
