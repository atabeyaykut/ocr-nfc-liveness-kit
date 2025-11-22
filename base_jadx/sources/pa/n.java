package pa;

import cc.c1;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import ma.p;
import ma.r0;
import ma.y0;
import na.h;
import vb.i;

/* loaded from: classes2.dex */
public class n extends m {

    /* renamed from: h, reason: collision with root package name */
    public final ma.a0 f12963h;

    /* renamed from: j, reason: collision with root package name */
    public final int f12964j;

    /* renamed from: k, reason: collision with root package name */
    public final cc.m f12965k;

    /* renamed from: l, reason: collision with root package name */
    public vb.i f12966l;

    /* renamed from: m, reason: collision with root package name */
    public Set<ma.d> f12967m;

    /* renamed from: n, reason: collision with root package name */
    public ma.d f12968n;

    /* JADX WARN: Illegal instructions before constructor call */
    public n(ma.j jVar, lb.f fVar, ma.a0 a0Var, int r6, Collection collection, bc.l lVar) {
        r0.a aVar = ma.r0.f10243a;
        if (jVar == null) {
            z0(0);
            throw null;
        }
        if (fVar == null) {
            z0(1);
            throw null;
        }
        if (r6 == 0) {
            z0(3);
            throw null;
        }
        if (lVar == null) {
            z0(6);
            throw null;
        }
        super(lVar, jVar, fVar, aVar);
        this.f12963h = a0Var;
        this.f12964j = r6;
        this.f12965k = new cc.m(this, Collections.emptyList(), collection, lVar);
    }

    public static /* synthetic */ void z0(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                r22 = 2;
                break;
            case 12:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "supertypes";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 8:
                objArr[0] = "constructors";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 12:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (r6) {
            case 9:
                objArr[1] = "getAnnotations";
                break;
            case 10:
                objArr[1] = "getTypeConstructor";
                break;
            case 11:
                objArr[1] = "getConstructors";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 14:
                objArr[1] = "getStaticScope";
                break;
            case 15:
                objArr[1] = "getKind";
                break;
            case 16:
                objArr[1] = "getModality";
                break;
            case 17:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (r6) {
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                break;
            case 12:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 12:
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
        z0(19);
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

    public final void K0(vb.i iVar, Set set, l lVar) {
        if (iVar == null) {
            z0(7);
            throw null;
        }
        this.f12966l = iVar;
        this.f12967m = set;
        this.f12968n = lVar;
    }

    @Override // ma.e
    public final ma.d M() {
        return this.f12968n;
    }

    @Override // ma.e
    public final vb.i N() {
        i.b bVar = i.b.f18453b;
        if (bVar != null) {
            return bVar;
        }
        z0(14);
        throw null;
    }

    @Override // ma.e
    public final ma.e P() {
        return null;
    }

    @Override // pa.b0
    public final vb.i e0(dc.f fVar) {
        if (fVar == null) {
            z0(12);
            throw null;
        }
        vb.i iVar = this.f12966l;
        if (iVar != null) {
            return iVar;
        }
        z0(13);
        throw null;
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return h.a.f10653a;
    }

    @Override // ma.e, ma.n, ma.z
    public final ma.q getVisibility() {
        p.h hVar = ma.p.f10225e;
        if (hVar != null) {
            return hVar;
        }
        z0(17);
        throw null;
    }

    @Override // ma.e
    public final int h() {
        int r02 = this.f12964j;
        if (r02 != 0) {
            return r02;
        }
        z0(15);
        throw null;
    }

    @Override // ma.g
    public final c1 i() {
        cc.m mVar = this.f12965k;
        if (mVar != null) {
            return mVar;
        }
        z0(10);
        throw null;
    }

    @Override // ma.e
    public final boolean isInline() {
        return false;
    }

    @Override // ma.e, ma.z
    public final ma.a0 j() {
        ma.a0 a0Var = this.f12963h;
        if (a0Var != null) {
            return a0Var;
        }
        z0(16);
        throw null;
    }

    @Override // ma.e
    public final Collection<ma.d> k() {
        Set<ma.d> set = this.f12967m;
        if (set != null) {
            return set;
        }
        z0(11);
        throw null;
    }

    @Override // ma.e, ma.h
    public final List<ma.w0> s() {
        List<ma.w0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        z0(18);
        throw null;
    }

    public String toString() {
        return "class " + getName();
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
