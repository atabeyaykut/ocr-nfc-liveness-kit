package yc;

import java.io.IOException;
import yc.f;

/* loaded from: classes2.dex */
public final class j extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f.d f19584e;
    public final /* synthetic */ boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ v f19585g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(String str, f.d dVar, v vVar) {
        super(str, true);
        this.f19584e = dVar;
        this.f19585g = vVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, yc.v] */
    /* JADX WARN: Type inference failed for: r2v4 */
    @Override // uc.a
    public final long a() {
        int r82;
        ?? r22;
        long jA;
        T t10;
        f.d dVar = this.f19584e;
        boolean z10 = this.f;
        v settings = this.f19585g;
        dVar.getClass();
        kotlin.jvm.internal.h.f(settings, "settings");
        kotlin.jvm.internal.v vVar = new kotlin.jvm.internal.v();
        kotlin.jvm.internal.v vVar2 = new kotlin.jvm.internal.v();
        synchronized (f.this.B) {
            synchronized (f.this) {
                try {
                    v other = f.this.f19559v;
                    if (z10) {
                        r22 = settings;
                    } else {
                        v vVar3 = new v();
                        kotlin.jvm.internal.h.f(other, "other");
                        int r92 = 0;
                        while (true) {
                            boolean z11 = true;
                            if (r92 >= 10) {
                                break;
                            }
                            if (((1 << r92) & other.f19649a) == 0) {
                                z11 = false;
                            }
                            if (z11) {
                                vVar3.b(r92, other.f19650b[r92]);
                            }
                            r92++;
                        }
                        for (int r93 = 0; r93 < 10; r93++) {
                            if (((1 << r93) & settings.f19649a) != 0) {
                                vVar3.b(r93, settings.f19650b[r93]);
                            }
                        }
                        l9.m mVar = l9.m.f9594a;
                        r22 = vVar3;
                    }
                    vVar2.f8975a = r22;
                    jA = r22.a() - other.a();
                    if (jA == 0 || f.this.f19544c.isEmpty()) {
                        t10 = 0;
                    } else {
                        Object[] array = f.this.f19544c.values().toArray(new r[0]);
                        if (array == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                        t10 = (r[]) array;
                    }
                    vVar.f8975a = t10;
                    f fVar = f.this;
                    v vVar4 = (v) vVar2.f8975a;
                    fVar.getClass();
                    kotlin.jvm.internal.h.f(vVar4, "<set-?>");
                    fVar.f19559v = vVar4;
                    f.this.f19551l.c(new g(f.this.f19545d + " onSettings", dVar, vVar2), 0L);
                    l9.m mVar2 = l9.m.f9594a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            try {
                f.this.B.a((v) vVar2.f8975a);
            } catch (IOException e10) {
                f.this.b(e10);
            }
            l9.m mVar3 = l9.m.f9594a;
        }
        r[] rVarArr = (r[]) vVar.f8975a;
        if (rVarArr == null) {
            return -1L;
        }
        for (r rVar : rVarArr) {
            synchronized (rVar) {
                rVar.f19616d += jA;
                if (jA > 0) {
                    rVar.notifyAll();
                }
                l9.m mVar4 = l9.m.f9594a;
            }
        }
        return -1L;
    }
}
