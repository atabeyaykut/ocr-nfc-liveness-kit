package xa;

import cc.e0;
import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import m9.v;
import ma.a;
import ma.b;
import ma.j;
import ma.r0;
import ma.u;
import na.h;
import pa.l;
import pa.x;

/* loaded from: classes2.dex */
public final class b extends l implements a {
    public Boolean I;
    public Boolean K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ma.e eVar, b bVar, h hVar, boolean z10, b.a aVar, r0 r0Var) {
        super(eVar, bVar, hVar, z10, aVar, r0Var);
        if (eVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (aVar == null) {
            C(2);
            throw null;
        }
        if (r0Var == null) {
            C(3);
            throw null;
        }
        this.I = null;
        this.K = null;
    }

    public static /* synthetic */ void C(int r92) {
        String str = (r92 == 11 || r92 == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 11 || r92 == 18) ? 2 : 3];
        switch (r92) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = "source";
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (r92 == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (r92 != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (r92) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r92 != 11 && r92 != 18) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static b X0(ma.e eVar, h hVar, boolean z10, bb.a aVar) {
        if (eVar == null) {
            C(4);
            throw null;
        }
        if (aVar != null) {
            return new b(eVar, null, hVar, z10, b.a.DECLARATION, aVar);
        }
        C(6);
        throw null;
    }

    @Override // pa.x, ma.a
    public final boolean B() {
        return this.K.booleanValue();
    }

    @Override // pa.l, pa.x
    public final /* bridge */ /* synthetic */ x K0(b.a aVar, j jVar, u uVar, r0 r0Var, h hVar, lb.f fVar) {
        return Y0(aVar, jVar, uVar, r0Var, hVar);
    }

    @Override // pa.x
    public final void Q0(boolean z10) {
        this.I = Boolean.valueOf(z10);
    }

    @Override // pa.x
    public final void R0(boolean z10) {
        this.K = Boolean.valueOf(z10);
    }

    @Override // pa.l
    /* renamed from: T0 */
    public final /* bridge */ /* synthetic */ l K0(b.a aVar, j jVar, u uVar, r0 r0Var, h hVar, lb.f fVar) {
        return Y0(aVar, jVar, uVar, r0Var, hVar);
    }

    public final b Y0(b.a aVar, j jVar, u uVar, r0 r0Var, h hVar) {
        if (jVar == null) {
            C(7);
            throw null;
        }
        if (aVar == null) {
            C(8);
            throw null;
        }
        if (hVar == null) {
            C(9);
            throw null;
        }
        if (r0Var == null) {
            C(10);
            throw null;
        }
        if (aVar == b.a.DECLARATION || aVar == b.a.SYNTHESIZED) {
            b bVar = new b((ma.e) jVar, (b) uVar, hVar, this.H, aVar, r0Var);
            bVar.Q0(this.I.booleanValue());
            bVar.R0(B());
            return bVar;
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + jVar + "\nkind: " + aVar);
    }

    @Override // xa.a
    public final a i0(e0 e0Var, ArrayList arrayList, e0 e0Var2, l9.g gVar) {
        b bVarY0 = Y0(k0(), b(), null, getSource(), getAnnotations());
        bVarY0.N0(e0Var == null ? null : ob.h.h(bVarY0, e0Var, h.a.f10653a), this.f13013k, v.f10173a, getTypeParameters(), d0.m(arrayList, g(), bVarY0), e0Var2, j(), getVisibility());
        if (gVar != null) {
            bVarY0.P0((a.InterfaceC0187a) gVar.f9582a, gVar.f9583b);
        }
        return bVarY0;
    }
}
