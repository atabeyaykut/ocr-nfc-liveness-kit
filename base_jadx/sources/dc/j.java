package dc;

import c5.y;
import cc.e0;
import cc.i1;
import cc.s1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import ma.w0;

/* loaded from: classes2.dex */
public final class j implements pb.b {

    /* renamed from: a, reason: collision with root package name */
    public final i1 f4835a;

    /* renamed from: b, reason: collision with root package name */
    public x9.a<? extends List<? extends s1>> f4836b;

    /* renamed from: c, reason: collision with root package name */
    public final j f4837c;

    /* renamed from: d, reason: collision with root package name */
    public final w0 f4838d;

    /* renamed from: e, reason: collision with root package name */
    public final l9.e f4839e;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends s1>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends s1> invoke() {
            x9.a<? extends List<? extends s1>> aVar = j.this.f4836b;
            if (aVar != null) {
                return aVar.invoke();
            }
            return null;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends s1>> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ f f4842b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(f fVar) {
            super(0);
            this.f4842b = fVar;
        }

        @Override // x9.a
        public final List<? extends s1> invoke() {
            Iterable iterable = (List) j.this.f4839e.getValue();
            if (iterable == null) {
                iterable = m9.v.f10173a;
            }
            Iterable iterable2 = iterable;
            ArrayList arrayList = new ArrayList(m9.n.Q0(iterable2));
            Iterator it = iterable2.iterator();
            while (it.hasNext()) {
                arrayList.add(((s1) it.next()).O0(this.f4842b));
            }
            return arrayList;
        }
    }

    public j() {
        throw null;
    }

    public /* synthetic */ j(i1 i1Var, i iVar, j jVar, w0 w0Var, int r72) {
        this(i1Var, (r72 & 2) != 0 ? null : iVar, (r72 & 4) != 0 ? null : jVar, (r72 & 8) != 0 ? null : w0Var);
    }

    public j(i1 i1Var, x9.a<? extends List<? extends s1>> aVar, j jVar, w0 w0Var) {
        this.f4835a = i1Var;
        this.f4836b = aVar;
        this.f4837c = jVar;
        this.f4838d = w0Var;
        this.f4839e = y.v(2, new a());
    }

    @Override // pb.b
    public final i1 b() {
        return this.f4835a;
    }

    public final j c(f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        i1 i1VarA = this.f4835a.a(kotlinTypeRefiner);
        kotlin.jvm.internal.h.e(i1VarA, "projection.refine(kotlinTypeRefiner)");
        b bVar = this.f4836b != null ? new b(kotlinTypeRefiner) : null;
        j jVar = this.f4837c;
        if (jVar == null) {
            jVar = this;
        }
        return new j(i1VarA, bVar, jVar, this.f4838d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!kotlin.jvm.internal.h.a(j.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        kotlin.jvm.internal.h.d(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor");
        j jVar = (j) obj;
        j jVar2 = this.f4837c;
        if (jVar2 == null) {
            jVar2 = this;
        }
        j jVar3 = jVar.f4837c;
        if (jVar3 != null) {
            jVar = jVar3;
        }
        return jVar2 == jVar;
    }

    @Override // cc.c1
    public final List<w0> getParameters() {
        return m9.v.f10173a;
    }

    public final int hashCode() {
        j jVar = this.f4837c;
        return jVar != null ? jVar.hashCode() : super.hashCode();
    }

    @Override // cc.c1
    public final Collection l() {
        Collection collection = (List) this.f4839e.getValue();
        if (collection == null) {
            collection = m9.v.f10173a;
        }
        return collection;
    }

    @Override // cc.c1
    public final ja.k m() {
        e0 type = this.f4835a.getType();
        kotlin.jvm.internal.h.e(type, "projection.type");
        return y.o(type);
    }

    @Override // cc.c1
    public final ma.g n() {
        return null;
    }

    @Override // cc.c1
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return "CapturedType(" + this.f4835a + ')';
    }
}
