package la;

import cc.i0;
import cc.m0;
import ja.o;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.w;
import la.g;
import m9.x;
import ma.a0;
import ma.b0;
import ma.q0;
import pa.g0;
import vb.i;

/* loaded from: classes2.dex */
public final class k implements oa.a, oa.c {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f9633h = {w.c(new kotlin.jvm.internal.r(w.a(k.class), "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;")), w.c(new kotlin.jvm.internal.r(w.a(k.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), w.c(new kotlin.jvm.internal.r(w.a(k.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};

    /* renamed from: a, reason: collision with root package name */
    public final b0 f9634a;

    /* renamed from: b, reason: collision with root package name */
    public final a0.b f9635b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.i f9636c;

    /* renamed from: d, reason: collision with root package name */
    public final m0 f9637d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.i f9638e;
    public final bc.a<lb.c, ma.e> f;

    /* renamed from: g, reason: collision with root package name */
    public final bc.i f9639g;

    public enum a {
        HIDDEN,
        VISIBLE,
        NOT_CONSIDERED,
        DROP
    }

    public k(g0 g0Var, bc.l storageManager, h hVar) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        this.f9634a = g0Var;
        this.f9635b = a0.b.f13l;
        this.f9636c = storageManager.d(hVar);
        pa.n nVar = new pa.n(new m(g0Var, new lb.c("java.io")), lb.f.t("Serializable"), a0.ABSTRACT, 2, b8.f.S(new i0(storageManager, new n(this))), storageManager);
        nVar.K0(i.b.f18453b, x.f10175a, null);
        m0 m0VarQ = nVar.q();
        kotlin.jvm.internal.h.e(m0VarQ, "mockSerializableClass.defaultType");
        this.f9637d = m0VarQ;
        this.f9638e = storageManager.d(new l(this, storageManager));
        this.f = storageManager.c();
        this.f9639g = storageManager.d(new s(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00da  */
    @Override // oa.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection a(ac.d r14) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: la.k.a(ac.d):java.util.Collection");
    }

    @Override // oa.a
    public final Collection b(ac.d classDescriptor) {
        za.e eVarF;
        Set<lb.f> setB;
        kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
        boolean z10 = g().f9627b;
        x xVar = x.f10175a;
        return (!z10 || (eVarF = f(classDescriptor)) == null || (setB = eVarF.C0().b()) == null) ? xVar : setB;
    }

    @Override // oa.c
    public final boolean c(ac.d classDescriptor, ac.l lVar) {
        kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
        za.e eVarF = f(classDescriptor);
        if (eVarF == null || !lVar.getAnnotations().P(oa.d.f11267a)) {
            return true;
        }
        if (!g().f9627b) {
            return false;
        }
        String strA = eb.w.a(lVar, 3);
        za.k kVarK0 = eVarF.C0();
        lb.f name = lVar.getName();
        kotlin.jvm.internal.h.e(name, "functionDescriptor.name");
        Collection collectionC = kVarK0.c(name, ua.c.FROM_BUILTINS);
        if (!(collectionC instanceof Collection) || !collectionC.isEmpty()) {
            Iterator it = collectionC.iterator();
            while (it.hasNext()) {
                if (kotlin.jvm.internal.h.a(eb.w.a((q0) it.next(), 3), strA)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0258  */
    @Override // oa.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection d(lb.f r17, ac.d r18) {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: la.k.d(lb.f, ac.d):java.util.Collection");
    }

    @Override // oa.a
    public final Collection e(ac.d classDescriptor) {
        List listS;
        kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
        lb.d dVarH = sb.b.h(classDescriptor);
        LinkedHashSet linkedHashSet = u.f9655a;
        boolean zA = u.a(dVarH);
        m0 m0Var = this.f9637d;
        boolean zIsAssignableFrom = true;
        if (zA) {
            m0 cloneableType = (m0) b8.f.O(this.f9638e, f9633h[1]);
            kotlin.jvm.internal.h.e(cloneableType, "cloneableType");
            listS = b8.f.T(cloneableType, m0Var);
        } else {
            if (!u.a(dVarH)) {
                String str = c.f9598a;
                lb.b bVarG = c.g(dVarH);
                if (bVarG == null) {
                    zIsAssignableFrom = false;
                } else {
                    try {
                        zIsAssignableFrom = Serializable.class.isAssignableFrom(Class.forName(bVarG.b().b()));
                    } catch (ClassNotFoundException unused) {
                    }
                }
            }
            if (!zIsAssignableFrom) {
                return m9.v.f10173a;
            }
            listS = b8.f.S(m0Var);
        }
        return listS;
    }

    public final za.e f(ma.e eVar) {
        lb.c cVarB;
        if (eVar == null) {
            ja.k.a(108);
            throw null;
        }
        lb.f fVar = ja.k.f8326e;
        if (ja.k.c(eVar, o.a.f8369a) || !ja.k.K(eVar)) {
            return null;
        }
        lb.d dVarH = sb.b.h(eVar);
        if (!dVarH.e()) {
            return null;
        }
        String str = c.f9598a;
        lb.b bVarG = c.g(dVarH);
        if (bVarG == null || (cVarB = bVarG.b()) == null) {
            return null;
        }
        ma.e eVarW = a6.a.w(g().f9626a, cVarB);
        if (eVarW instanceof za.e) {
            return (za.e) eVarW;
        }
        return null;
    }

    public final g.a g() {
        return (g.a) b8.f.O(this.f9636c, f9633h[0]);
    }
}
