package kotlin.reflect.jvm.internal.impl.load.java;

import eb.o;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;
import l9.g;
import m9.t;
import ma.a1;
import ma.u;
import ob.j;

/* loaded from: classes2.dex */
public final class JavaIncompatibilityRulesOverridabilityCondition implements j {

    public static final class a {
        public static boolean a(ma.a superDescriptor, ma.a subDescriptor) {
            h.f(superDescriptor, "superDescriptor");
            h.f(subDescriptor, "subDescriptor");
            if (!(subDescriptor instanceof xa.e) || !(superDescriptor instanceof u)) {
                return false;
            }
            xa.e eVar = (xa.e) subDescriptor;
            eVar.g().size();
            u uVar = (u) superDescriptor;
            uVar.g().size();
            List<a1> listG = eVar.a().g();
            h.e(listG, "subDescriptor.original.valueParameters");
            List<a1> listG2 = uVar.a().g();
            h.e(listG2, "superDescriptor.original.valueParameters");
            Iterator it = t.A1(listG, listG2).iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                a1 subParameter = (a1) gVar.f9582a;
                a1 superParameter = (a1) gVar.f9583b;
                h.e(subParameter, "subParameter");
                boolean z10 = b((u) subDescriptor, subParameter) instanceof o.c;
                h.e(superParameter, "superParameter");
                if (z10 != (b(uVar, superParameter) instanceof o.c)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x012a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static eb.o b(ma.u r6, ma.a1 r7) {
            /*
                Method dump skipped, instructions count: 314
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.a.b(ma.u, ma.a1):eb.o");
        }
    }

    @Override // ob.j
    public j.a a() {
        return j.a.CONFLICTS_ONLY;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ac  */
    @Override // ob.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ob.j.b b(ma.a r8, ma.a r9, ma.e r10) {
        /*
            r7 = this;
            java.lang.String r0 = "superDescriptor"
            kotlin.jvm.internal.h.f(r8, r0)
            java.lang.String r0 = "subDescriptor"
            kotlin.jvm.internal.h.f(r9, r0)
            boolean r0 = r8 instanceof ma.b
            r1 = 0
            if (r0 == 0) goto Lad
            boolean r0 = r9 instanceof ma.u
            if (r0 == 0) goto Lad
            boolean r0 = ja.k.z(r9)
            if (r0 == 0) goto L1b
            goto Lad
        L1b:
            int r0 = kotlin.reflect.jvm.internal.impl.load.java.c.f8982m
            r0 = r9
            ma.u r0 = (ma.u) r0
            lb.f r2 = r0.getName()
            java.lang.String r3 = "subDescriptor.name"
            kotlin.jvm.internal.h.e(r2, r3)
            boolean r2 = kotlin.reflect.jvm.internal.impl.load.java.c.b(r2)
            if (r2 != 0) goto L42
            kotlin.reflect.jvm.internal.impl.load.java.e$a r2 = kotlin.reflect.jvm.internal.impl.load.java.e.f8987a
            lb.f r2 = r0.getName()
            kotlin.jvm.internal.h.e(r2, r3)
            java.util.ArrayList r3 = kotlin.reflect.jvm.internal.impl.load.java.e.f8996k
            boolean r2 = r3.contains(r2)
            if (r2 != 0) goto L42
            goto Lad
        L42:
            r2 = r8
            ma.b r2 = (ma.b) r2
            ma.b r2 = kotlin.reflect.jvm.internal.impl.load.java.d.c(r2)
            boolean r3 = r8 instanceof ma.u
            if (r3 == 0) goto L51
            r4 = r8
            ma.u r4 = (ma.u) r4
            goto L52
        L51:
            r4 = 0
        L52:
            r5 = 1
            if (r4 == 0) goto L61
            boolean r6 = r0.v0()
            boolean r4 = r4.v0()
            if (r6 != r4) goto L61
            r4 = 1
            goto L62
        L61:
            r4 = 0
        L62:
            r4 = r4 ^ r5
            if (r4 == 0) goto L6e
            if (r2 == 0) goto Lac
            boolean r4 = r0.v0()
            if (r4 != 0) goto L6e
            goto Lac
        L6e:
            boolean r4 = r10 instanceof xa.c
            if (r4 == 0) goto Lad
            ma.u r4 = r0.Y()
            if (r4 == 0) goto L79
            goto Lad
        L79:
            if (r2 == 0) goto Lad
            boolean r10 = kotlin.reflect.jvm.internal.impl.load.java.d.d(r10, r2)
            if (r10 == 0) goto L82
            goto Lad
        L82:
            boolean r10 = r2 instanceof ma.u
            if (r10 == 0) goto Lac
            if (r3 == 0) goto Lac
            ma.u r2 = (ma.u) r2
            ma.u r10 = kotlin.reflect.jvm.internal.impl.load.java.c.a(r2)
            if (r10 == 0) goto Lac
            r10 = 2
            java.lang.String r0 = eb.w.a(r0, r10)
            r2 = r8
            ma.u r2 = (ma.u) r2
            ma.u r2 = r2.a()
            java.lang.String r3 = "superDescriptor.original"
            kotlin.jvm.internal.h.e(r2, r3)
            java.lang.String r10 = eb.w.a(r2, r10)
            boolean r10 = kotlin.jvm.internal.h.a(r0, r10)
            if (r10 == 0) goto Lac
            goto Lad
        Lac:
            r1 = 1
        Lad:
            ob.j$b r10 = ob.j.b.INCOMPATIBLE
            if (r1 == 0) goto Lb2
            return r10
        Lb2:
            boolean r8 = kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.a.a(r8, r9)
            if (r8 == 0) goto Lb9
            return r10
        Lb9:
            ob.j$b r8 = ob.j.b.UNKNOWN
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.b(ma.a, ma.a, ma.e):ob.j$b");
    }
}
