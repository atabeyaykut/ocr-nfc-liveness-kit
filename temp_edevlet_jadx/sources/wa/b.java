package wa;

import cc.e0;
import cc.m0;
import da.m;
import java.util.ArrayList;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import m9.t;
import ma.r0;
import p4.g7;

/* loaded from: classes2.dex */
public class b implements na.c, xa.g {
    public static final /* synthetic */ m<Object>[] f = {w.c(new r(w.a(b.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};

    /* renamed from: a, reason: collision with root package name */
    public final lb.c f18828a;

    /* renamed from: b, reason: collision with root package name */
    public final r0 f18829b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.i f18830c;

    /* renamed from: d, reason: collision with root package name */
    public final cb.b f18831d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f18832e;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<m0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ g7 f18833a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ b f18834b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(g7 g7Var, b bVar) {
            super(0);
            this.f18833a = g7Var;
            this.f18834b = bVar;
        }

        @Override // x9.a
        public final m0 invoke() {
            m0 m0VarQ = this.f18833a.a().m().j(this.f18834b.f18828a).q();
            kotlin.jvm.internal.h.e(m0VarQ, "c.module.builtIns.getBui…qName(fqName).defaultType");
            return m0VarQ;
        }
    }

    public b(g7 c10, cb.a aVar, lb.c fqName) {
        ArrayList arguments;
        r0 r0VarA;
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        this.f18828a = fqName;
        this.f18829b = (aVar == null || (r0VarA = ((ya.c) c10.f12358a).f19341j.a(aVar)) == null) ? r0.f10243a : r0VarA;
        this.f18830c = c10.b().d(new a(c10, this));
        this.f18831d = (aVar == null || (arguments = aVar.getArguments()) == null) ? null : (cb.b) t.b1(arguments);
        if (aVar != null) {
            aVar.e();
        }
        this.f18832e = false;
    }

    @Override // na.c
    public Map<lb.f, qb.g<?>> a() {
        return m9.w.f10174a;
    }

    @Override // na.c
    public final lb.c d() {
        return this.f18828a;
    }

    @Override // xa.g
    public final boolean e() {
        return this.f18832e;
    }

    @Override // na.c
    public final r0 getSource() {
        return this.f18829b;
    }

    @Override // na.c
    public final e0 getType() {
        return (m0) b8.f.O(this.f18830c, f[0]);
    }
}
