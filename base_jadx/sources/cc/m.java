package cc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import ma.u0;

/* loaded from: classes2.dex */
public final class m extends b {

    /* renamed from: c, reason: collision with root package name */
    public final ma.e f2331c;

    /* renamed from: d, reason: collision with root package name */
    public final List<ma.w0> f2332d;

    /* renamed from: e, reason: collision with root package name */
    public final Collection<e0> f2333e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(ma.e eVar, List<? extends ma.w0> list, Collection<e0> collection, bc.l lVar) {
        super(lVar);
        if (eVar == null) {
            k(0);
            throw null;
        }
        if (list == null) {
            k(1);
            throw null;
        }
        if (collection == null) {
            k(2);
            throw null;
        }
        if (lVar == null) {
            k(3);
            throw null;
        }
        this.f2331c = eVar;
        this.f2332d = Collections.unmodifiableList(new ArrayList(list));
        this.f2333e = Collections.unmodifiableCollection(collection);
    }

    public static /* synthetic */ void k(int r10) {
        String str = (r10 == 4 || r10 == 5 || r10 == 6 || r10 == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r10 == 4 || r10 == 5 || r10 == 6 || r10 == 7) ? 2 : 3];
        switch (r10) {
            case 1:
                objArr[0] = "parameters";
                break;
            case 2:
                objArr[0] = "supertypes";
                break;
            case 3:
                objArr[0] = "storageManager";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
                break;
            default:
                objArr[0] = "classDescriptor";
                break;
        }
        if (r10 == 4) {
            objArr[1] = "getParameters";
        } else if (r10 == 5) {
            objArr[1] = "getDeclarationDescriptor";
        } else if (r10 == 6) {
            objArr[1] = "computeSupertypes";
        } else if (r10 != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
        } else {
            objArr[1] = "getSupertypeLoopChecker";
        }
        if (r10 != 4 && r10 != 5 && r10 != 6 && r10 != 7) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (r10 != 4 && r10 != 5 && r10 != 6 && r10 != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // cc.h
    public final Collection<e0> d() {
        Collection<e0> collection = this.f2333e;
        if (collection != null) {
            return collection;
        }
        k(6);
        throw null;
    }

    @Override // cc.h
    public final ma.u0 g() {
        return u0.a.f10247a;
    }

    @Override // cc.c1
    public final List<ma.w0> getParameters() {
        List<ma.w0> list = this.f2332d;
        if (list != null) {
            return list;
        }
        k(4);
        throw null;
    }

    @Override // cc.c1
    public final boolean o() {
        return true;
    }

    @Override // cc.b
    /* renamed from: p */
    public final ma.e n() {
        ma.e eVar = this.f2331c;
        if (eVar != null) {
            return eVar;
        }
        k(5);
        throw null;
    }

    public final String toString() {
        String str = ob.i.g(this.f2331c).f9672a;
        if (str != null) {
            return str;
        }
        lb.d.a(4);
        throw null;
    }
}
