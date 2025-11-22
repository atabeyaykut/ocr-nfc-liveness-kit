package db;

import cc.e0;
import cc.m0;
import cc.y;
import dc.b;
import java.util.ArrayList;
import java.util.Iterator;
import p4.g7;

/* loaded from: classes2.dex */
public abstract class a<TAnnotation> {

    /* renamed from: db.a$a, reason: collision with other inner class name */
    public static final class C0070a {

        /* renamed from: a, reason: collision with root package name */
        public final fc.h f4733a;

        /* renamed from: b, reason: collision with root package name */
        public final va.t f4734b;

        /* renamed from: c, reason: collision with root package name */
        public final fc.m f4735c;

        public C0070a(fc.h hVar, va.t tVar, fc.m mVar) {
            this.f4733a = hVar;
            this.f4734b = tVar;
            this.f4735c = mVar;
        }
    }

    public static void a(Object obj, ArrayList arrayList, d dVar) {
        arrayList.add(obj);
        Iterable<? extends C0070a> iterableInvoke = dVar.invoke(obj);
        if (iterableInvoke != null) {
            Iterator<? extends C0070a> it = iterableInvoke.iterator();
            while (it.hasNext()) {
                a(it.next(), arrayList, dVar);
            }
        }
    }

    public static k c(fc.h hVar) {
        m0 m0VarI;
        m0 m0VarI2;
        kotlin.jvm.internal.h.f(hVar, "<this>");
        y yVarG = b.a.g(hVar);
        if (yVarG == null || (m0VarI = b.a.W(yVarG)) == null) {
            m0VarI = b.a.i(hVar);
            kotlin.jvm.internal.h.c(m0VarI);
        }
        if (b.a.N(m0VarI)) {
            return k.NULLABLE;
        }
        y yVarG2 = b.a.g(hVar);
        if (yVarG2 == null || (m0VarI2 = b.a.h0(yVarG2)) == null) {
            m0VarI2 = b.a.i(hVar);
            kotlin.jvm.internal.h.c(m0VarI2);
        }
        if (b.a.N(m0VarI2)) {
            return null;
        }
        return k.NOT_NULL;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f9 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final db.l b(fc.m r8) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: db.a.b(fc.m):db.l");
    }

    public final ArrayList d(fc.h hVar) {
        g7 g7Var = ((v) this).f4816c;
        va.t tVar = (va.t) ((l9.e) g7Var.f12361d).getValue();
        va.e eVar = ((ya.c) g7Var.f12358a).f19348q;
        kotlin.jvm.internal.h.f(hVar, "<this>");
        C0070a c0070a = new C0070a(hVar, eVar.b(tVar, ((e0) hVar).getAnnotations()), null);
        d dVar = new d(this);
        ArrayList arrayList = new ArrayList(1);
        a(c0070a, arrayList, dVar);
        return arrayList;
    }
}
