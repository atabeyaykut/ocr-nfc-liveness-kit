package pa;

import cc.l1;
import cc.p1;
import cc.t1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import ma.a;
import ma.a1;
import ma.b;
import ma.u;
import pa.v0;

/* loaded from: classes2.dex */
public abstract class x extends q implements ma.u {
    public boolean A;
    public Collection<? extends ma.u> B;
    public volatile x9.a<Collection<ma.u>> C;
    public final ma.u D;
    public final b.a E;
    public ma.u F;
    public Map<a.InterfaceC0187a<?>, Object> G;

    /* renamed from: e, reason: collision with root package name */
    public List<ma.w0> f13009e;
    public List<a1> f;

    /* renamed from: g, reason: collision with root package name */
    public cc.e0 f13010g;

    /* renamed from: h, reason: collision with root package name */
    public List<ma.o0> f13011h;

    /* renamed from: j, reason: collision with root package name */
    public ma.o0 f13012j;

    /* renamed from: k, reason: collision with root package name */
    public ma.o0 f13013k;

    /* renamed from: l, reason: collision with root package name */
    public ma.a0 f13014l;

    /* renamed from: m, reason: collision with root package name */
    public ma.q f13015m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f13016n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f13017p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f13018q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f13019r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13020s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f13021t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13022v;
    public boolean w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f13023x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f13024y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f13025z;

    public class a implements u.a<ma.u> {

        /* renamed from: a, reason: collision with root package name */
        public l1 f13026a;

        /* renamed from: b, reason: collision with root package name */
        public ma.j f13027b;

        /* renamed from: c, reason: collision with root package name */
        public ma.a0 f13028c;

        /* renamed from: d, reason: collision with root package name */
        public ma.q f13029d;

        /* renamed from: e, reason: collision with root package name */
        public ma.u f13030e;
        public b.a f;

        /* renamed from: g, reason: collision with root package name */
        public List<a1> f13031g;

        /* renamed from: h, reason: collision with root package name */
        public final List<ma.o0> f13032h;

        /* renamed from: i, reason: collision with root package name */
        public ma.o0 f13033i;

        /* renamed from: j, reason: collision with root package name */
        public ma.o0 f13034j;

        /* renamed from: k, reason: collision with root package name */
        public cc.e0 f13035k;

        /* renamed from: l, reason: collision with root package name */
        public lb.f f13036l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f13037m;

        /* renamed from: n, reason: collision with root package name */
        public boolean f13038n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f13039o;

        /* renamed from: p, reason: collision with root package name */
        public boolean f13040p;

        /* renamed from: q, reason: collision with root package name */
        public boolean f13041q;

        /* renamed from: r, reason: collision with root package name */
        public List<ma.w0> f13042r;

        /* renamed from: s, reason: collision with root package name */
        public na.h f13043s;

        /* renamed from: t, reason: collision with root package name */
        public boolean f13044t;

        /* renamed from: u, reason: collision with root package name */
        public final LinkedHashMap f13045u;

        /* renamed from: v, reason: collision with root package name */
        public Boolean f13046v;
        public boolean w;

        /* renamed from: x, reason: collision with root package name */
        public final /* synthetic */ x f13047x;

        public a(x xVar, l1 l1Var, ma.j jVar, ma.a0 a0Var, ma.q qVar, b.a aVar, List list, List list2, ma.o0 o0Var, cc.e0 e0Var) {
            if (l1Var == null) {
                s(0);
                throw null;
            }
            if (jVar == null) {
                s(1);
                throw null;
            }
            if (a0Var == null) {
                s(2);
                throw null;
            }
            if (qVar == null) {
                s(3);
                throw null;
            }
            if (aVar == null) {
                s(4);
                throw null;
            }
            if (list == null) {
                s(5);
                throw null;
            }
            if (list2 == null) {
                s(6);
                throw null;
            }
            if (e0Var == null) {
                s(7);
                throw null;
            }
            this.f13047x = xVar;
            this.f13030e = null;
            this.f13034j = xVar.f13013k;
            this.f13037m = true;
            this.f13038n = false;
            this.f13039o = false;
            this.f13040p = false;
            this.f13041q = xVar.w;
            this.f13042r = null;
            this.f13043s = null;
            this.f13044t = xVar.f13023x;
            this.f13045u = new LinkedHashMap();
            this.f13046v = null;
            this.w = false;
            this.f13026a = l1Var;
            this.f13027b = jVar;
            this.f13028c = a0Var;
            this.f13029d = qVar;
            this.f = aVar;
            this.f13031g = list;
            this.f13032h = list2;
            this.f13033i = o0Var;
            this.f13035k = e0Var;
            this.f13036l = null;
        }

        public static /* synthetic */ void s(int r17) {
            String str;
            int r22;
            switch (r17) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
            switch (r17) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    r22 = 2;
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    r22 = 3;
                    break;
            }
            Object[] objArr = new Object[r22];
            switch (r17) {
                case 1:
                    objArr[0] = "newOwner";
                    break;
                case 2:
                    objArr[0] = "newModality";
                    break;
                case 3:
                    objArr[0] = "newVisibility";
                    break;
                case 4:
                case 14:
                    objArr[0] = "kind";
                    break;
                case 5:
                    objArr[0] = "newValueParameterDescriptors";
                    break;
                case 6:
                    objArr[0] = "newContextReceiverParameters";
                    break;
                case 7:
                    objArr[0] = "newReturnType";
                    break;
                case 8:
                    objArr[0] = "owner";
                    break;
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 10:
                    objArr[0] = "modality";
                    break;
                case 12:
                    objArr[0] = "visibility";
                    break;
                case 17:
                    objArr[0] = "name";
                    break;
                case 19:
                case 21:
                    objArr[0] = "parameters";
                    break;
                case 23:
                    objArr[0] = "type";
                    break;
                case 25:
                    objArr[0] = "contextReceiverParameters";
                    break;
                case 35:
                    objArr[0] = "additionalAnnotations";
                    break;
                case 37:
                default:
                    objArr[0] = "substitution";
                    break;
                case 39:
                    objArr[0] = "userDataKey";
                    break;
            }
            switch (r17) {
                case 9:
                    objArr[1] = "setOwner";
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 11:
                    objArr[1] = "setModality";
                    break;
                case 13:
                    objArr[1] = "setVisibility";
                    break;
                case 15:
                    objArr[1] = "setKind";
                    break;
                case 16:
                    objArr[1] = "setCopyOverrides";
                    break;
                case 18:
                    objArr[1] = "setName";
                    break;
                case 20:
                    objArr[1] = "setValueParameters";
                    break;
                case 22:
                    objArr[1] = "setTypeParameters";
                    break;
                case 24:
                    objArr[1] = "setReturnType";
                    break;
                case 26:
                    objArr[1] = "setContextReceiverParameters";
                    break;
                case 27:
                    objArr[1] = "setExtensionReceiverParameter";
                    break;
                case 28:
                    objArr[1] = "setDispatchReceiverParameter";
                    break;
                case 29:
                    objArr[1] = "setOriginal";
                    break;
                case 30:
                    objArr[1] = "setSignatureChange";
                    break;
                case 31:
                    objArr[1] = "setPreserveSourceElement";
                    break;
                case 32:
                    objArr[1] = "setDropOriginalInContainingParts";
                    break;
                case 33:
                    objArr[1] = "setHiddenToOvercomeSignatureClash";
                    break;
                case 34:
                    objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                    break;
                case 36:
                    objArr[1] = "setAdditionalAnnotations";
                    break;
                case 38:
                    objArr[1] = "setSubstitution";
                    break;
                case 40:
                    objArr[1] = "putUserData";
                    break;
                case 41:
                    objArr[1] = "getSubstitution";
                    break;
                case 42:
                    objArr[1] = "setJustForTypeSubstitution";
                    break;
            }
            switch (r17) {
                case 8:
                    objArr[2] = "setOwner";
                    break;
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    break;
                case 10:
                    objArr[2] = "setModality";
                    break;
                case 12:
                    objArr[2] = "setVisibility";
                    break;
                case 14:
                    objArr[2] = "setKind";
                    break;
                case 17:
                    objArr[2] = "setName";
                    break;
                case 19:
                    objArr[2] = "setValueParameters";
                    break;
                case 21:
                    objArr[2] = "setTypeParameters";
                    break;
                case 23:
                    objArr[2] = "setReturnType";
                    break;
                case 25:
                    objArr[2] = "setContextReceiverParameters";
                    break;
                case 35:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                case 37:
                    objArr[2] = "setSubstitution";
                    break;
                case 39:
                    objArr[2] = "putUserData";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            switch (r17) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    throw new IllegalStateException(str2);
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    throw new IllegalArgumentException(str2);
            }
        }

        @Override // ma.u.a
        public final u.a a(ma.a0 a0Var) {
            if (a0Var != null) {
                this.f13028c = a0Var;
                return this;
            }
            s(10);
            throw null;
        }

        @Override // ma.u.a
        public final u.a b(ma.j jVar) {
            if (jVar != null) {
                this.f13027b = jVar;
                return this;
            }
            s(8);
            throw null;
        }

        @Override // ma.u.a
        public final ma.u build() {
            return this.f13047x.L0(this);
        }

        @Override // ma.u.a
        public final u.a c(List list) {
            this.f13031g = list;
            return this;
        }

        @Override // ma.u.a
        public final u.a d(Boolean bool) {
            this.f13045u.put(xa.e.L, bool);
            return this;
        }

        @Override // ma.u.a
        public final u.a e(lb.f fVar) {
            if (fVar != null) {
                this.f13036l = fVar;
                return this;
            }
            s(17);
            throw null;
        }

        @Override // ma.u.a
        public final u.a f() {
            this.f13039o = true;
            return this;
        }

        @Override // ma.u.a
        public final u.a g(l1 l1Var) {
            if (l1Var != null) {
                this.f13026a = l1Var;
                return this;
            }
            s(37);
            throw null;
        }

        @Override // ma.u.a
        public final u.a h(ma.d dVar) {
            this.f13030e = dVar;
            return this;
        }

        @Override // ma.u.a
        public final u.a i() {
            this.f13044t = true;
            return this;
        }

        @Override // ma.u.a
        public final u.a j(na.h hVar) {
            if (hVar != null) {
                this.f13043s = hVar;
                return this;
            }
            s(35);
            throw null;
        }

        @Override // ma.u.a
        public final u.a k() {
            this.f13037m = false;
            return this;
        }

        @Override // ma.u.a
        public final u.a l() {
            this.f13042r = m9.v.f10173a;
            return this;
        }

        @Override // ma.u.a
        public final u.a m(ma.o0 o0Var) {
            this.f13034j = o0Var;
            return this;
        }

        @Override // ma.u.a
        public final u.a n(cc.e0 e0Var) {
            if (e0Var != null) {
                this.f13035k = e0Var;
                return this;
            }
            s(23);
            throw null;
        }

        @Override // ma.u.a
        public final u.a o() {
            this.f13041q = true;
            return this;
        }

        @Override // ma.u.a
        public final u.a p(b.a aVar) {
            if (aVar != null) {
                this.f = aVar;
                return this;
            }
            s(14);
            throw null;
        }

        @Override // ma.u.a
        public final u.a q(ma.q qVar) {
            if (qVar != null) {
                this.f13029d = qVar;
                return this;
            }
            s(12);
            throw null;
        }

        @Override // ma.u.a
        public final u.a r() {
            this.f13038n = true;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(b.a aVar, ma.j jVar, ma.u uVar, ma.r0 r0Var, na.h hVar, lb.f fVar) {
        super(jVar, hVar, fVar, r0Var);
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (fVar == null) {
            C(2);
            throw null;
        }
        if (aVar == null) {
            C(3);
            throw null;
        }
        if (r0Var == null) {
            C(4);
            throw null;
        }
        this.f13015m = ma.p.f10228i;
        this.f13016n = false;
        this.f13017p = false;
        this.f13018q = false;
        this.f13019r = false;
        this.f13020s = false;
        this.f13021t = false;
        this.f13022v = false;
        this.w = false;
        this.f13023x = false;
        this.f13024y = false;
        this.f13025z = true;
        this.A = false;
        this.B = null;
        this.C = null;
        this.F = null;
        this.G = null;
        this.D = uVar == null ? this : uVar;
        this.E = aVar;
    }

    public static /* synthetic */ void C(int r72) {
        String str;
        int r22;
        switch (r72) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r72) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                r22 = 2;
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r72) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "source";
                break;
            case 5:
                objArr[0] = "contextReceiverParameters";
                break;
            case 6:
                objArr[0] = "typeParameters";
                break;
            case 7:
            case 28:
            case 30:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 8:
            case 10:
                objArr[0] = "visibility";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 11:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 12:
                objArr[0] = "extensionReceiverParameter";
                break;
            case 17:
                objArr[0] = "overriddenDescriptors";
                break;
            case 22:
                objArr[0] = "originalSubstitutor";
                break;
            case 24:
            case 29:
            case 31:
                objArr[0] = "substitutor";
                break;
            case 25:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (r72) {
            case 9:
                objArr[1] = "initialize";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 14:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 15:
                objArr[1] = "getModality";
                break;
            case 16:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getTypeParameters";
                break;
            case 19:
                objArr[1] = "getValueParameters";
                break;
            case 20:
                objArr[1] = "getOriginal";
                break;
            case 21:
                objArr[1] = "getKind";
                break;
            case 23:
                objArr[1] = "newCopyBuilder";
                break;
            case 26:
                objArr[1] = "copy";
                break;
            case 27:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (r72) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                break;
            case 10:
                objArr[2] = "setVisibility";
                break;
            case 11:
                objArr[2] = "setReturnType";
                break;
            case 12:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case 17:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 22:
                objArr[2] = "substitute";
                break;
            case 24:
                objArr[2] = "newCopyBuilder";
                break;
            case 25:
                objArr[2] = "doSubstitute";
                break;
            case 28:
            case 29:
            case 30:
            case 31:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r72) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                throw new IllegalStateException(str2);
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static ArrayList M0(ma.u uVar, List list, p1 p1Var, boolean z10, boolean z11, boolean[] zArr) {
        if (list == null) {
            C(30);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a1 a1Var = (a1) it.next();
            cc.e0 type = a1Var.getType();
            t1 t1Var = t1.IN_VARIANCE;
            cc.e0 e0VarK = p1Var.k(type, t1Var);
            cc.e0 e0VarG0 = a1Var.g0();
            cc.e0 e0VarK2 = e0VarG0 == null ? null : p1Var.k(e0VarG0, t1Var);
            if (e0VarK == null) {
                return null;
            }
            if ((e0VarK != a1Var.getType() || e0VarG0 != e0VarK2) && zArr != null) {
                zArr[0] = true;
            }
            w wVar = a1Var instanceof v0.a ? new w((List) ((v0.a) a1Var).f13006m.getValue()) : null;
            a1 a1Var2 = z10 ? null : a1Var;
            int index = a1Var.getIndex();
            na.h annotations = a1Var.getAnnotations();
            lb.f name = a1Var.getName();
            boolean zT0 = a1Var.t0();
            boolean zW = a1Var.W();
            boolean zT = a1Var.T();
            ma.r0 source = z11 ? a1Var.getSource() : ma.r0.f10243a;
            kotlin.jvm.internal.h.f(annotations, "annotations");
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(source, "source");
            arrayList.add(wVar == null ? new v0(uVar, a1Var2, index, annotations, name, e0VarK, zT0, zW, zT, e0VarK2, source) : new v0.a(uVar, a1Var2, index, annotations, name, e0VarK, zT0, zW, zT, e0VarK2, source, wVar));
        }
        return arrayList;
    }

    @Override // ma.a
    public boolean B() {
        return this.A;
    }

    @Override // ma.u
    public final boolean B0() {
        return this.f13023x;
    }

    @Override // ma.z
    public final boolean D0() {
        return this.f13022v;
    }

    @Override // ma.b
    /* renamed from: E0, reason: merged with bridge method [inline-methods] */
    public ma.u b0(ma.j jVar, ma.a0 a0Var, ma.o oVar) {
        ma.u uVarBuild = r().b(jVar).a(a0Var).q(oVar).p(b.a.FAKE_OVERRIDE).k().build();
        if (uVarBuild != null) {
            return uVarBuild;
        }
        C(26);
        throw null;
    }

    @Override // ma.z
    public final boolean G() {
        return this.f13021t;
    }

    public abstract x K0(b.a aVar, ma.j jVar, ma.u uVar, ma.r0 r0Var, na.h hVar, lb.f fVar);

    public boolean L() {
        return this.f13020s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.util.Map] */
    public x L0(a aVar) {
        o0 o0Var;
        d dVar;
        cc.e0 e0VarK;
        x9.a<Collection<ma.u>> vVar;
        if (aVar == null) {
            C(25);
            throw null;
        }
        boolean[] zArr = new boolean[1];
        na.h hVarJ = aVar.f13043s != null ? com.google.android.gms.internal.clearcut.d0.j(getAnnotations(), aVar.f13043s) : getAnnotations();
        ma.j jVar = aVar.f13027b;
        ma.u uVar = aVar.f13030e;
        b.a aVar2 = aVar.f;
        lb.f fVar = aVar.f13036l;
        ma.r0 source = aVar.f13039o ? (uVar != null ? uVar : a()).getSource() : ma.r0.f10243a;
        if (source == null) {
            C(27);
            throw null;
        }
        x xVarK0 = K0(aVar2, jVar, uVar, source, hVarJ, fVar);
        List<ma.w0> typeParameters = aVar.f13042r;
        if (typeParameters == null) {
            typeParameters = getTypeParameters();
        }
        zArr[0] = zArr[0] | (!typeParameters.isEmpty());
        ArrayList arrayList = new ArrayList(typeParameters.size());
        p1 p1VarC = a6.a.C(typeParameters, aVar.f13026a, xVarK0, arrayList, zArr);
        if (p1VarC == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        boolean zIsEmpty = aVar.f13032h.isEmpty();
        t1 t1Var = t1.IN_VARIANCE;
        if (!zIsEmpty) {
            for (ma.o0 o0Var2 : aVar.f13032h) {
                cc.e0 e0VarK2 = p1VarC.k(o0Var2.getType(), t1Var);
                if (e0VarK2 == null) {
                    return null;
                }
                arrayList2.add(ob.h.b(xVarK0, e0VarK2, ((wb.f) o0Var2.getValue()).a(), o0Var2.getAnnotations()));
                zArr[0] = (e0VarK2 != o0Var2.getType()) | zArr[0];
            }
        }
        ma.o0 o0Var3 = aVar.f13033i;
        if (o0Var3 != null) {
            cc.e0 e0VarK3 = p1VarC.k(o0Var3.getType(), t1Var);
            if (e0VarK3 == null) {
                return null;
            }
            o0 o0Var4 = new o0(xVarK0, new wb.d(xVarK0, e0VarK3, aVar.f13033i.getValue()), aVar.f13033i.getAnnotations());
            zArr[0] = (e0VarK3 != aVar.f13033i.getType()) | zArr[0];
            o0Var = o0Var4;
        } else {
            o0Var = null;
        }
        ma.o0 o0Var5 = aVar.f13034j;
        if (o0Var5 != null) {
            d dVarC = o0Var5.c(p1VarC);
            if (dVarC == null) {
                return null;
            }
            zArr[0] = zArr[0] | (dVarC != aVar.f13034j);
            dVar = dVarC;
        } else {
            dVar = null;
        }
        ArrayList arrayListM0 = M0(xVarK0, aVar.f13031g, p1VarC, aVar.f13040p, aVar.f13039o, zArr);
        if (arrayListM0 == null || (e0VarK = p1VarC.k(aVar.f13035k, t1.OUT_VARIANCE)) == null) {
            return null;
        }
        boolean z10 = zArr[0] | (e0VarK != aVar.f13035k);
        zArr[0] = z10;
        if (!z10 && aVar.w) {
            return this;
        }
        xVarK0.N0(o0Var, dVar, arrayList2, arrayList, arrayListM0, e0VarK, aVar.f13028c, aVar.f13029d);
        xVarK0.f13016n = this.f13016n;
        xVarK0.f13017p = this.f13017p;
        xVarK0.f13018q = this.f13018q;
        xVarK0.f13019r = this.f13019r;
        xVarK0.f13020s = this.f13020s;
        xVarK0.f13024y = this.f13024y;
        xVarK0.f13021t = this.f13021t;
        xVarK0.f13022v = this.f13022v;
        xVarK0.Q0(this.f13025z);
        xVarK0.w = aVar.f13041q;
        xVarK0.f13023x = aVar.f13044t;
        Boolean bool = aVar.f13046v;
        xVarK0.R0(bool != null ? bool.booleanValue() : this.A);
        if (!aVar.f13045u.isEmpty() || this.G != null) {
            LinkedHashMap linkedHashMap = aVar.f13045u;
            Map<a.InterfaceC0187a<?>, Object> map = this.G;
            if (map != null) {
                for (Map.Entry<a.InterfaceC0187a<?>, Object> entry : map.entrySet()) {
                    if (!linkedHashMap.containsKey(entry.getKey())) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            int size = linkedHashMap.size();
            LinkedHashMap linkedHashMapSingletonMap = linkedHashMap;
            if (size == 1) {
                linkedHashMapSingletonMap = Collections.singletonMap(linkedHashMap.keySet().iterator().next(), linkedHashMap.values().iterator().next());
            }
            xVarK0.G = linkedHashMapSingletonMap;
        }
        if (aVar.f13038n || this.F != null) {
            ma.u uVar2 = this.F;
            if (uVar2 == null) {
                uVar2 = this;
            }
            xVarK0.F = uVar2.c(p1VarC);
        }
        if (aVar.f13037m && !a().e().isEmpty()) {
            if (aVar.f13026a.e()) {
                vVar = this.C;
                if (vVar == null) {
                    xVarK0.w0(e());
                }
            } else {
                vVar = new v(this, p1VarC);
            }
            xVarK0.C = vVar;
        }
        return xVarK0;
    }

    public void N0(o0 o0Var, ma.o0 o0Var2, List list, List list2, List list3, cc.e0 e0Var, ma.a0 a0Var, ma.q qVar) {
        if (list == null) {
            C(5);
            throw null;
        }
        if (list2 == null) {
            C(6);
            throw null;
        }
        if (list3 == null) {
            C(7);
            throw null;
        }
        if (qVar == null) {
            C(8);
            throw null;
        }
        this.f13009e = m9.t.v1(list2);
        this.f = m9.t.v1(list3);
        this.f13010g = e0Var;
        this.f13014l = a0Var;
        this.f13015m = qVar;
        this.f13012j = o0Var;
        this.f13013k = o0Var2;
        this.f13011h = list;
        for (int r32 = 0; r32 < list2.size(); r32++) {
            ma.w0 w0Var = (ma.w0) list2.get(r32);
            if (w0Var.getIndex() != r32) {
                throw new IllegalStateException(w0Var + " index is " + w0Var.getIndex() + " but position is " + r32);
            }
        }
        for (int r22 = 0; r22 < list3.size(); r22++) {
            a1 a1Var = (a1) list3.get(r22);
            if (a1Var.getIndex() != r22 + 0) {
                throw new IllegalStateException(a1Var + "index is " + a1Var.getIndex() + " but position is " + r22);
            }
        }
    }

    public final a O0(p1 p1Var) {
        if (p1Var != null) {
            return new a(this, p1Var.g(), b(), j(), getVisibility(), k0(), g(), p0(), this.f13012j, getReturnType());
        }
        C(24);
        throw null;
    }

    public final <V> void P0(a.InterfaceC0187a<V> interfaceC0187a, Object obj) {
        if (this.G == null) {
            this.G = new LinkedHashMap();
        }
        this.G.put(interfaceC0187a, obj);
    }

    public void Q0(boolean z10) {
        this.f13025z = z10;
    }

    public void R0(boolean z10) {
        this.A = z10;
    }

    public final void S0(cc.m0 m0Var) {
        if (m0Var != null) {
            this.f13010g = m0Var;
        } else {
            C(11);
            throw null;
        }
    }

    @Override // ma.u
    public final ma.u Y() {
        return this.F;
    }

    public <V> V Z(a.InterfaceC0187a<V> interfaceC0187a) {
        Map<a.InterfaceC0187a<?>, Object> map = this.G;
        if (map == null) {
            return null;
        }
        return (V) map.get(interfaceC0187a);
    }

    @Override // pa.q
    public ma.u a() {
        ma.u uVar = this.D;
        ma.u uVarA = uVar == this ? this : uVar.a();
        if (uVarA != null) {
            return uVarA;
        }
        C(20);
        throw null;
    }

    @Override // ma.a
    public final ma.o0 a0() {
        return this.f13013k;
    }

    @Override // ma.u, ma.t0
    public ma.u c(p1 p1Var) {
        if (p1Var == null) {
            C(22);
            throw null;
        }
        if (p1Var.h()) {
            return this;
        }
        a aVarO0 = O0(p1Var);
        aVarO0.f13030e = a();
        aVarO0.f13039o = true;
        aVarO0.w = true;
        return aVarO0.build();
    }

    public Collection<? extends ma.u> e() {
        x9.a<Collection<ma.u>> aVar = this.C;
        if (aVar != null) {
            this.B = aVar.invoke();
            this.C = null;
        }
        Collection<? extends ma.u> collectionEmptyList = this.B;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList != null) {
            return collectionEmptyList;
        }
        C(14);
        throw null;
    }

    @Override // ma.a
    public final List<a1> g() {
        List<a1> list = this.f;
        if (list != null) {
            return list;
        }
        C(19);
        throw null;
    }

    public cc.e0 getReturnType() {
        return this.f13010g;
    }

    @Override // ma.a
    public final List<ma.w0> getTypeParameters() {
        List<ma.w0> list = this.f13009e;
        if (list != null) {
            return list;
        }
        throw new IllegalStateException("typeParameters == null for " + this);
    }

    @Override // ma.n, ma.z
    public final ma.q getVisibility() {
        ma.q qVar = this.f13015m;
        if (qVar != null) {
            return qVar;
        }
        C(16);
        throw null;
    }

    @Override // ma.a
    public final ma.o0 h0() {
        return this.f13012j;
    }

    public boolean isExternal() {
        return this.f13018q;
    }

    @Override // ma.u
    public final boolean isInfix() {
        if (this.f13017p) {
            return true;
        }
        Iterator<? extends ma.u> it = a().e().iterator();
        while (it.hasNext()) {
            if (it.next().isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.f13019r;
    }

    @Override // ma.u
    public final boolean isOperator() {
        if (this.f13016n) {
            return true;
        }
        Iterator<? extends ma.u> it = a().e().iterator();
        while (it.hasNext()) {
            if (it.next().isOperator()) {
                return true;
            }
        }
        return false;
    }

    public boolean isSuspend() {
        return this.f13024y;
    }

    @Override // ma.z
    public final ma.a0 j() {
        ma.a0 a0Var = this.f13014l;
        if (a0Var != null) {
            return a0Var;
        }
        C(15);
        throw null;
    }

    @Override // ma.b
    public final b.a k0() {
        b.a aVar = this.E;
        if (aVar != null) {
            return aVar;
        }
        C(21);
        throw null;
    }

    public <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.b(this, d10);
    }

    @Override // ma.a
    public final List<ma.o0> p0() {
        List<ma.o0> list = this.f13011h;
        if (list != null) {
            return list;
        }
        C(13);
        throw null;
    }

    public u.a<? extends ma.u> r() {
        return O0(p1.f2344b);
    }

    @Override // ma.u
    public final boolean v0() {
        return this.w;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void w0(Collection<? extends ma.b> collection) {
        if (collection == 0) {
            C(17);
            throw null;
        }
        this.B = collection;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((ma.u) it.next()).B0()) {
                this.f13023x = true;
                return;
            }
        }
    }
}
