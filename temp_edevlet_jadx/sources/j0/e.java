package j0;

import com.google.android.gms.internal.clearcut.p4;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p4.d8;
import p4.e8;
import p4.o7;
import p4.q7;
import p4.t9;
import p4.y9;

/* loaded from: classes.dex */
public final class e implements m, com.google.android.gms.internal.clearcut.k, h5.e, h5.g, t9 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7950a;

    public e(int r32) {
        this.f7950a = new LinkedHashMap(r32 < 3 ? r32 + 1 : r32 < 1073741824 ? (int) ((r32 / 0.75f) + 1.0f) : Integer.MAX_VALUE);
    }

    public /* synthetic */ e(h5.h hVar) {
        this.f7950a = hVar;
    }

    @Override // p4.t9
    public final y9 a() {
        o7 o7Var = (o7) this.f7950a;
        q7 q7Var = new q7();
        d8 d8Var = new d8();
        d8Var.f12311a = o7Var;
        q7Var.f12621e = new e8(d8Var);
        return new y9(q7Var, 0);
    }

    @Override // h5.e
    public final void b(h5.k kVar) {
        h5.l lVar = (h5.l) this.f7950a;
        if (kVar.m()) {
            return;
        }
        Exception excH = kVar.h();
        excH.getClass();
        lVar.c(excH);
    }

    @Override // j0.m
    public final g0.a c() {
        Object obj = this.f7950a;
        return ((q0.a) ((List) obj).get(0)).c() ? new g0.j((List) obj) : new g0.i((List) obj);
    }

    @Override // j0.m
    public final List d() {
        return (List) this.f7950a;
    }

    public final Map e() {
        Object obj = this.f7950a;
        return ((Map) obj).isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap((Map) obj);
    }

    @Override // j0.m
    public final boolean f() {
        Object obj = this.f7950a;
        return ((List) obj).size() == 1 && ((q0.a) ((List) obj).get(0)).c();
    }

    @Override // com.google.android.gms.internal.clearcut.k
    public final Object g() {
        com.google.android.gms.internal.clearcut.e eVar = (com.google.android.gms.internal.clearcut.e) this.f7950a;
        eVar.getClass();
        return p4.b(com.google.android.gms.internal.clearcut.e.f3087h.getContentResolver(), eVar.f3092c);
    }

    public final void h(Class cls, Object obj) {
        ((Map) this.f7950a).put(cls, obj);
    }

    @Override // h5.g
    public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
        ((h5.h) this.f7950a).a();
    }

    public /* synthetic */ e(Object obj) {
        this.f7950a = obj;
    }
}
