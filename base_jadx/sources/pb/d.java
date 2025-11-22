package pb;

import bc.c;
import cc.a1;
import cc.b0;
import cc.e0;
import cc.i0;
import cc.i1;
import cc.k1;
import cc.l1;
import cc.t1;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.g;
import m9.n;
import ma.w0;

/* loaded from: classes2.dex */
public final class d {

    public static final class a extends j implements x9.a<e0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i1 f13066a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(i1 i1Var) {
            super(0);
            this.f13066a = i1Var;
        }

        @Override // x9.a
        public final e0 invoke() {
            e0 type = this.f13066a.getType();
            h.e(type, "this@createCapturedIfNeeded.type");
            return type;
        }
    }

    public static final i1 a(i1 i1Var, w0 w0Var) {
        if (w0Var == null || i1Var.b() == t1.INVARIANT) {
            return i1Var;
        }
        if (w0Var.I() != i1Var.b()) {
            c cVar = new c(i1Var);
            a1.f2258b.getClass();
            return new k1(new pb.a(i1Var, cVar, false, a1.f2259c));
        }
        if (!i1Var.c()) {
            return new k1(i1Var.getType());
        }
        c.a NO_LOCKS = bc.c.f1191e;
        h.e(NO_LOCKS, "NO_LOCKS");
        return new k1(new i0(NO_LOCKS, new a(i1Var)));
    }

    public static l1 b(l1 l1Var) {
        if (!(l1Var instanceof b0)) {
            return new e(l1Var, true);
        }
        b0 b0Var = (b0) l1Var;
        i1[] i1VarArr = b0Var.f2261c;
        h.f(i1VarArr, "<this>");
        w0[] other = b0Var.f2260b;
        h.f(other, "other");
        int r22 = Math.min(i1VarArr.length, other.length);
        ArrayList arrayList = new ArrayList(r22);
        for (int r52 = 0; r52 < r22; r52++) {
            arrayList.add(new g(i1VarArr[r52], other[r52]));
        }
        ArrayList arrayList2 = new ArrayList(n.Q0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            g gVar = (g) it.next();
            arrayList2.add(a((i1) gVar.f9582a, (w0) gVar.f9583b));
        }
        return new b0(other, (i1[]) arrayList2.toArray(new i1[0]), true);
    }
}
