package pa;

import bc.c;
import cc.c1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import ma.r0;
import ma.y0;
import na.h;
import vb.i;

/* loaded from: classes2.dex */
public final class h0 extends m {

    /* renamed from: h, reason: collision with root package name */
    public final int f12905h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f12906j;

    /* renamed from: k, reason: collision with root package name */
    public ma.a0 f12907k;

    /* renamed from: l, reason: collision with root package name */
    public ma.q f12908l;

    /* renamed from: m, reason: collision with root package name */
    public cc.m f12909m;

    /* renamed from: n, reason: collision with root package name */
    public ArrayList f12910n;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f12911p;

    /* renamed from: q, reason: collision with root package name */
    public final bc.l f12912q;

    /* JADX WARN: Illegal instructions before constructor call */
    public h0(r rVar, lb.f fVar, c.a aVar) {
        r0.a aVar2 = ma.r0.f10243a;
        if (fVar == null) {
            z0(2);
            throw null;
        }
        if (aVar == null) {
            z0(4);
            throw null;
        }
        super(aVar, rVar, fVar, aVar2);
        this.f12911p = new ArrayList();
        this.f12912q = aVar;
        this.f12905h = 2;
        this.f12906j = false;
    }

    public static /* synthetic */ void z0(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                r22 = 2;
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
                objArr[0] = "kind";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "source";
                break;
            case 4:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 9:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "supertype";
                break;
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 16:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (r6) {
            case 5:
                objArr[1] = "getAnnotations";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 7:
                objArr[1] = "getModality";
                break;
            case 8:
                objArr[1] = "getKind";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getTypeConstructor";
                break;
            case 13:
                objArr[1] = "getConstructors";
                break;
            case 15:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 17:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 18:
                objArr[1] = "getStaticScope";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (r6) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 12:
                objArr[2] = "addSupertype";
                break;
            case 14:
                objArr[2] = "setTypeParameterDescriptors";
                break;
            case 16:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
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
        return this.f12906j;
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
        z0(18);
        throw null;
    }

    @Override // ma.e
    public final ma.e P() {
        return null;
    }

    @Override // pa.b0
    public final vb.i e0(dc.f fVar) {
        if (fVar == null) {
            z0(16);
            throw null;
        }
        i.b bVar = i.b.f18453b;
        if (bVar != null) {
            return bVar;
        }
        z0(17);
        throw null;
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return h.a.f10653a;
    }

    @Override // ma.e, ma.n, ma.z
    public final ma.q getVisibility() {
        ma.q qVar = this.f12908l;
        if (qVar != null) {
            return qVar;
        }
        z0(10);
        throw null;
    }

    @Override // ma.e
    public final int h() {
        int r02 = this.f12905h;
        if (r02 != 0) {
            return r02;
        }
        z0(8);
        throw null;
    }

    @Override // ma.g
    public final c1 i() {
        cc.m mVar = this.f12909m;
        if (mVar != null) {
            return mVar;
        }
        z0(11);
        throw null;
    }

    @Override // ma.e
    public final boolean isInline() {
        return false;
    }

    @Override // ma.e, ma.z
    public final ma.a0 j() {
        ma.a0 a0Var = this.f12907k;
        if (a0Var != null) {
            return a0Var;
        }
        z0(7);
        throw null;
    }

    @Override // ma.e
    public final Collection k() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        z0(13);
        throw null;
    }

    @Override // ma.e, ma.h
    public final List<ma.w0> s() {
        ArrayList arrayList = this.f12910n;
        if (arrayList != null) {
            return arrayList;
        }
        z0(15);
        throw null;
    }

    public final String toString() {
        return p.e0(this);
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
