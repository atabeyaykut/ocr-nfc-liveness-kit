package pa;

import bc.c;
import cc.c1;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import ma.p;
import ma.y0;
import vb.i;

/* loaded from: classes2.dex */
public final class s extends m {

    /* renamed from: h, reason: collision with root package name */
    public final cc.m f12980h;

    /* renamed from: j, reason: collision with root package name */
    public final a f12981j;

    /* renamed from: k, reason: collision with root package name */
    public final bc.i<Set<lb.f>> f12982k;

    /* renamed from: l, reason: collision with root package name */
    public final na.h f12983l;

    public class a extends vb.j {

        /* renamed from: b, reason: collision with root package name */
        public final bc.g<lb.f, Collection<? extends ma.q0>> f12984b;

        /* renamed from: c, reason: collision with root package name */
        public final bc.g<lb.f, Collection<? extends ma.l0>> f12985c;

        /* renamed from: d, reason: collision with root package name */
        public final bc.i<Collection<ma.j>> f12986d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ s f12987e;

        /* renamed from: pa.s$a$a, reason: collision with other inner class name */
        public class C0218a implements x9.l<lb.f, Collection<? extends ma.q0>> {
            public C0218a() {
            }

            @Override // x9.l
            public final Collection<? extends ma.q0> invoke(lb.f fVar) {
                lb.f fVar2 = fVar;
                a aVar = a.this;
                if (fVar2 != null) {
                    return aVar.j(aVar.i().c(fVar2, ua.c.FOR_NON_TRACKED_SCOPE), fVar2);
                }
                aVar.getClass();
                a.h(8);
                throw null;
            }
        }

        public class b implements x9.l<lb.f, Collection<? extends ma.l0>> {
            public b() {
            }

            @Override // x9.l
            public final Collection<? extends ma.l0> invoke(lb.f fVar) {
                lb.f fVar2 = fVar;
                a aVar = a.this;
                if (fVar2 != null) {
                    return aVar.j(aVar.i().a(fVar2, ua.c.FOR_NON_TRACKED_SCOPE), fVar2);
                }
                aVar.getClass();
                a.h(4);
                throw null;
            }
        }

        public class c implements x9.a<Collection<ma.j>> {
            public c() {
            }

            @Override // x9.a
            public final Collection<ma.j> invoke() {
                a aVar = a.this;
                aVar.getClass();
                HashSet hashSet = new HashSet();
                for (lb.f fVar : aVar.f12987e.f12982k.invoke()) {
                    if (fVar == null) {
                        a.h(5);
                        throw null;
                    }
                    Collection collection = (Collection) ((c.k) aVar.f12984b).invoke(fVar);
                    if (collection == null) {
                        a.h(7);
                        throw null;
                    }
                    hashSet.addAll(collection);
                    Collection collection2 = (Collection) ((c.k) aVar.f12985c).invoke(fVar);
                    if (collection2 == null) {
                        a.h(3);
                        throw null;
                    }
                    hashSet.addAll(collection2);
                }
                return hashSet;
            }
        }

        public a(s sVar, bc.l lVar) {
            if (lVar == null) {
                h(0);
                throw null;
            }
            this.f12987e = sVar;
            this.f12984b = lVar.g(new C0218a());
            this.f12985c = lVar.g(new b());
            this.f12986d = lVar.d(new c());
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ void h(int r13) {
            /*
                Method dump skipped, instructions count: 346
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: pa.s.a.h(int):void");
        }

        @Override // vb.j, vb.i
        public final Collection a(lb.f fVar, ua.c cVar) {
            if (fVar == null) {
                h(1);
                throw null;
            }
            Collection collection = (Collection) ((c.k) this.f12985c).invoke(fVar);
            if (collection != null) {
                return collection;
            }
            h(3);
            throw null;
        }

        @Override // vb.j, vb.i
        public final Set<lb.f> b() {
            Set<lb.f> setInvoke = this.f12987e.f12982k.invoke();
            if (setInvoke != null) {
                return setInvoke;
            }
            h(17);
            throw null;
        }

        @Override // vb.j, vb.i
        public final Collection c(lb.f fVar, ua.c cVar) {
            if (fVar == null) {
                h(5);
                throw null;
            }
            Collection collection = (Collection) ((c.k) this.f12984b).invoke(fVar);
            if (collection != null) {
                return collection;
            }
            h(7);
            throw null;
        }

        @Override // vb.j, vb.i
        public final Set<lb.f> d() {
            Set<lb.f> setInvoke = this.f12987e.f12982k.invoke();
            if (setInvoke != null) {
                return setInvoke;
            }
            h(19);
            throw null;
        }

        @Override // vb.j, vb.l
        public final Collection<ma.j> f(vb.d dVar, x9.l<? super lb.f, Boolean> lVar) {
            if (dVar == null) {
                h(13);
                throw null;
            }
            if (lVar == null) {
                h(14);
                throw null;
            }
            Collection<ma.j> collectionInvoke = this.f12986d.invoke();
            if (collectionInvoke != null) {
                return collectionInvoke;
            }
            h(15);
            throw null;
        }

        @Override // vb.j, vb.i
        public final Set<lb.f> g() {
            Set<lb.f> setEmptySet = Collections.emptySet();
            if (setEmptySet != null) {
                return setEmptySet;
            }
            h(18);
            throw null;
        }

        public final vb.i i() {
            vb.i iVarO = ((cc.e0) ((cc.h) this.f12987e.i()).l().iterator().next()).o();
            if (iVarO != null) {
                return iVarO;
            }
            h(9);
            throw null;
        }

        public final LinkedHashSet j(Collection collection, lb.f fVar) {
            if (fVar == null) {
                h(10);
                throw null;
            }
            if (collection == null) {
                h(11);
                throw null;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            ob.n.f.h(fVar, collection, Collections.emptySet(), this.f12987e, new t(linkedHashSet));
            return linkedHashSet;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(bc.l lVar, ma.e eVar, cc.m0 m0Var, lb.f fVar, bc.i iVar, na.h hVar, ma.r0 r0Var) {
        super(lVar, eVar, fVar, r0Var);
        if (lVar == null) {
            z0(6);
            throw null;
        }
        if (eVar == null) {
            z0(7);
            throw null;
        }
        if (m0Var == null) {
            z0(8);
            throw null;
        }
        if (fVar == null) {
            z0(9);
            throw null;
        }
        if (iVar == null) {
            z0(10);
            throw null;
        }
        if (r0Var == null) {
            z0(12);
            throw null;
        }
        this.f12983l = hVar;
        this.f12980h = new cc.m(this, Collections.emptyList(), Collections.singleton(m0Var), lVar);
        this.f12981j = new a(this, lVar);
        this.f12982k = iVar;
    }

    public static s K0(bc.l lVar, ma.e eVar, lb.f fVar, bc.i<Set<lb.f>> iVar, na.h hVar, ma.r0 r0Var) {
        if (lVar == null) {
            z0(0);
            throw null;
        }
        if (eVar == null) {
            z0(1);
            throw null;
        }
        if (fVar == null) {
            z0(2);
            throw null;
        }
        if (iVar == null) {
            z0(3);
            throw null;
        }
        if (r0Var != null) {
            return new s(lVar, eVar, eVar.q(), fVar, iVar, hVar, r0Var);
        }
        z0(5);
        throw null;
    }

    public static /* synthetic */ void z0(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                r22 = 2;
                break;
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
                objArr[0] = "enumClass";
                break;
            case 2:
            case 9:
                objArr[0] = "name";
                break;
            case 3:
            case 10:
                objArr[0] = "enumMemberNames";
                break;
            case 4:
            case 11:
                objArr[0] = "annotations";
                break;
            case 5:
            case 12:
                objArr[0] = "source";
                break;
            case 6:
            default:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "containingClass";
                break;
            case 8:
                objArr[0] = "supertype";
                break;
            case 13:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (r6) {
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getConstructors";
                break;
            case 17:
                objArr[1] = "getTypeConstructor";
                break;
            case 18:
                objArr[1] = "getKind";
                break;
            case 19:
                objArr[1] = "getModality";
                break;
            case 20:
                objArr[1] = "getVisibility";
                break;
            case 21:
                objArr[1] = "getAnnotations";
                break;
            case 22:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 23:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (r6) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "<init>";
                break;
            case 13:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                objArr[2] = "create";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // ma.z
    public final boolean D0() {
        return false;
    }

    @Override // ma.e
    public final Collection<ma.e> E() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        z0(23);
        throw null;
    }

    @Override // ma.e
    public final boolean F() {
        return false;
    }

    @Override // ma.z
    public final boolean G() {
        return false;
    }

    @Override // ma.h
    public final boolean H() {
        return false;
    }

    @Override // ma.e
    public final boolean H0() {
        return false;
    }

    @Override // ma.e
    public final ma.d M() {
        return null;
    }

    @Override // ma.e
    public final vb.i N() {
        i.b bVar = i.b.f18453b;
        if (bVar != null) {
            return bVar;
        }
        z0(15);
        throw null;
    }

    @Override // ma.e
    public final ma.e P() {
        return null;
    }

    @Override // pa.b0
    public final vb.i e0(dc.f fVar) {
        if (fVar == null) {
            z0(13);
            throw null;
        }
        a aVar = this.f12981j;
        if (aVar != null) {
            return aVar;
        }
        z0(14);
        throw null;
    }

    @Override // na.a
    public final na.h getAnnotations() {
        na.h hVar = this.f12983l;
        if (hVar != null) {
            return hVar;
        }
        z0(21);
        throw null;
    }

    @Override // ma.e, ma.n, ma.z
    public final ma.q getVisibility() {
        p.h hVar = ma.p.f10225e;
        if (hVar != null) {
            return hVar;
        }
        z0(20);
        throw null;
    }

    @Override // ma.e
    public final int h() {
        return 4;
    }

    @Override // ma.g
    public final c1 i() {
        cc.m mVar = this.f12980h;
        if (mVar != null) {
            return mVar;
        }
        z0(17);
        throw null;
    }

    @Override // ma.e
    public final boolean isInline() {
        return false;
    }

    @Override // ma.e, ma.z
    public final ma.a0 j() {
        return ma.a0.FINAL;
    }

    @Override // ma.e
    public final Collection<ma.d> k() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        z0(16);
        throw null;
    }

    @Override // ma.e, ma.h
    public final List<ma.w0> s() {
        List<ma.w0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        z0(22);
        throw null;
    }

    public final String toString() {
        return "enum entry " + getName();
    }

    @Override // ma.e
    public final boolean u() {
        return false;
    }

    @Override // ma.e
    public final boolean y() {
        return false;
    }

    @Override // ma.e
    public final y0<cc.m0> y0() {
        return null;
    }
}
