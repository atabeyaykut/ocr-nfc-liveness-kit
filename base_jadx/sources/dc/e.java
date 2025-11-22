package dc;

import c5.y;
import cc.c0;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.i1;
import cc.m0;
import cc.s1;
import cc.t1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.w;

/* loaded from: classes2.dex */
public abstract class e extends c6.a {

    public static final class a extends e {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4826a = new a();
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.f implements x9.l<fc.h, s1> {
        public b(Object obj) {
            super(1, obj);
        }

        @Override // kotlin.jvm.internal.a, da.c
        public final String getName() {
            return "prepareType";
        }

        @Override // kotlin.jvm.internal.a
        public final da.f getOwner() {
            return w.a(e.class);
        }

        @Override // kotlin.jvm.internal.a
        public final String getSignature() {
            return "prepareType(Lorg/jetbrains/kotlin/types/model/KotlinTypeMarker;)Lorg/jetbrains/kotlin/types/UnwrappedType;";
        }

        @Override // x9.l
        public final s1 invoke(fc.h hVar) {
            fc.h p02 = hVar;
            kotlin.jvm.internal.h.f(p02, "p0");
            return ((e) this.receiver).q(p02);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [cc.c0] */
    /* JADX WARN: Type inference failed for: r0v3, types: [cc.c0] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [cc.c0] */
    public static m0 u(m0 m0Var) {
        e0 type;
        c1 c1VarM0 = m0Var.M0();
        boolean z10 = false;
        if (c1VarM0 instanceof pb.c) {
            pb.c cVar = (pb.c) c1VarM0;
            i1 i1Var = cVar.f13064a;
            if (!(i1Var.b() == t1.IN_VARIANCE)) {
                i1Var = null;
            }
            if (i1Var != null && (type = i1Var.getType()) != null) {
                s1VarX = type.P0();
            }
            s1 s1Var = s1VarX;
            if (cVar.f13065b == null) {
                Collection<e0> collectionL = cVar.l();
                ArrayList arrayList = new ArrayList(m9.n.Q0(collectionL));
                Iterator it = collectionL.iterator();
                while (it.hasNext()) {
                    arrayList.add(((e0) it.next()).P0());
                }
                i1 projection = cVar.f13064a;
                kotlin.jvm.internal.h.f(projection, "projection");
                cVar.f13065b = new j(projection, new i(arrayList), null, null, 8);
            }
            fc.b bVar = fc.b.FOR_SUBTYPING;
            j jVar = cVar.f13065b;
            kotlin.jvm.internal.h.c(jVar);
            return new h(bVar, jVar, s1Var, m0Var.L0(), m0Var.N0(), 32);
        }
        if (c1VarM0 instanceof qb.r) {
            ((qb.r) c1VarM0).getClass();
            m9.n.Q0(null);
            throw null;
        }
        if (!(c1VarM0 instanceof c0) || !m0Var.N0()) {
            return m0Var;
        }
        ?? r02 = (c0) c1VarM0;
        LinkedHashSet<e0> linkedHashSet = r02.f2275b;
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(linkedHashSet));
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            arrayList2.add(y.x((e0) it2.next()));
            z10 = true;
        }
        if (z10) {
            e0 e0Var = r02.f2274a;
            s1VarX = e0Var != null ? y.x(e0Var) : null;
            arrayList2.isEmpty();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(arrayList2);
            linkedHashSet2.hashCode();
            s1VarX = new c0(linkedHashSet2, s1VarX);
        }
        if (s1VarX != null) {
            r02 = s1VarX;
        }
        return r02.c();
    }

    @Override // c6.a
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final s1 q(fc.h type) {
        s1 s1VarC;
        kotlin.jvm.internal.h.f(type, "type");
        if (!(type instanceof e0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        s1 origin = ((e0) type).P0();
        if (origin instanceof m0) {
            s1VarC = u((m0) origin);
        } else {
            if (!(origin instanceof cc.y)) {
                throw new j7.p();
            }
            cc.y yVar = (cc.y) origin;
            m0 m0VarU = u(yVar.f2377b);
            m0 m0Var = yVar.f2378c;
            m0 m0VarU2 = u(m0Var);
            s1VarC = (m0VarU == yVar.f2377b && m0VarU2 == m0Var) ? origin : f0.c(m0VarU, m0VarU2);
        }
        b bVar = new b(this);
        kotlin.jvm.internal.h.f(s1VarC, "<this>");
        kotlin.jvm.internal.h.f(origin, "origin");
        e0 e0VarS = c5.v.s(origin);
        return c5.v.O(s1VarC, e0VarS != null ? (e0) bVar.invoke(e0VarS) : null);
    }
}
