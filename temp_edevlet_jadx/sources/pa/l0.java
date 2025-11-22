package pa;

import cc.l1;
import cc.p1;
import cc.t1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import ma.a;
import ma.a1;
import ma.b;
import ma.p;
import ma.r0;
import na.h;

/* loaded from: classes2.dex */
public class l0 extends x0 implements ma.l0 {
    public m0 A;
    public ma.n0 B;
    public ma.s C;
    public ma.s D;

    /* renamed from: j, reason: collision with root package name */
    public final ma.a0 f12935j;

    /* renamed from: k, reason: collision with root package name */
    public ma.q f12936k;

    /* renamed from: l, reason: collision with root package name */
    public Collection<? extends ma.l0> f12937l;

    /* renamed from: m, reason: collision with root package name */
    public final ma.l0 f12938m;

    /* renamed from: n, reason: collision with root package name */
    public final b.a f12939n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f12940p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f12941q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f12942r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f12943s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f12944t;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f12945v;
    public List<ma.o0> w;

    /* renamed from: x, reason: collision with root package name */
    public ma.o0 f12946x;

    /* renamed from: y, reason: collision with root package name */
    public ma.o0 f12947y;

    /* renamed from: z, reason: collision with root package name */
    public ArrayList f12948z;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        public ma.j f12949a;

        /* renamed from: b, reason: collision with root package name */
        public ma.a0 f12950b;

        /* renamed from: c, reason: collision with root package name */
        public ma.q f12951c;

        /* renamed from: e, reason: collision with root package name */
        public b.a f12953e;

        /* renamed from: h, reason: collision with root package name */
        public final ma.o0 f12955h;

        /* renamed from: i, reason: collision with root package name */
        public final lb.f f12956i;

        /* renamed from: j, reason: collision with root package name */
        public final cc.e0 f12957j;

        /* renamed from: d, reason: collision with root package name */
        public ma.l0 f12952d = null;
        public l1 f = l1.f2330a;

        /* renamed from: g, reason: collision with root package name */
        public boolean f12954g = true;

        public a() {
            this.f12949a = l0.this.b();
            this.f12950b = l0.this.j();
            this.f12951c = l0.this.getVisibility();
            this.f12953e = l0.this.k0();
            this.f12955h = l0.this.f12946x;
            this.f12956i = l0.this.getName();
            this.f12957j = l0.this.getType();
        }

        public static /* synthetic */ void a(int r24) {
            String str = (r24 == 1 || r24 == 2 || r24 == 3 || r24 == 5 || r24 == 7 || r24 == 9 || r24 == 11 || r24 == 19 || r24 == 13 || r24 == 14 || r24 == 16 || r24 == 17) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(r24 == 1 || r24 == 2 || r24 == 3 || r24 == 5 || r24 == 7 || r24 == 9 || r24 == 11 || r24 == 19 || r24 == 13 || r24 == 14 || r24 == 16 || r24 == 17) ? 2 : 3];
            switch (r24) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                    break;
                case 4:
                    objArr[0] = "type";
                    break;
                case 6:
                    objArr[0] = "modality";
                    break;
                case 8:
                    objArr[0] = "visibility";
                    break;
                case 10:
                    objArr[0] = "kind";
                    break;
                case 12:
                    objArr[0] = "typeParameters";
                    break;
                case 15:
                    objArr[0] = "substitution";
                    break;
                case 18:
                    objArr[0] = "name";
                    break;
                default:
                    objArr[0] = "owner";
                    break;
            }
            if (r24 == 1) {
                objArr[1] = "setOwner";
            } else if (r24 == 2) {
                objArr[1] = "setOriginal";
            } else if (r24 == 3) {
                objArr[1] = "setPreserveSourceElement";
            } else if (r24 == 5) {
                objArr[1] = "setReturnType";
            } else if (r24 == 7) {
                objArr[1] = "setModality";
            } else if (r24 == 9) {
                objArr[1] = "setVisibility";
            } else if (r24 == 11) {
                objArr[1] = "setKind";
            } else if (r24 == 19) {
                objArr[1] = "setName";
            } else if (r24 == 13) {
                objArr[1] = "setTypeParameters";
            } else if (r24 == 14) {
                objArr[1] = "setDispatchReceiverParameter";
            } else if (r24 == 16) {
                objArr[1] = "setSubstitution";
            } else if (r24 != 17) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
            } else {
                objArr[1] = "setCopyOverrides";
            }
            switch (r24) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    break;
                case 4:
                    objArr[2] = "setReturnType";
                    break;
                case 6:
                    objArr[2] = "setModality";
                    break;
                case 8:
                    objArr[2] = "setVisibility";
                    break;
                case 10:
                    objArr[2] = "setKind";
                    break;
                case 12:
                    objArr[2] = "setTypeParameters";
                    break;
                case 15:
                    objArr[2] = "setSubstitution";
                    break;
                case 18:
                    objArr[2] = "setName";
                    break;
                default:
                    objArr[2] = "setOwner";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (r24 != 1 && r24 != 2 && r24 != 3 && r24 != 5 && r24 != 7 && r24 != 9 && r24 != 11 && r24 != 19 && r24 != 13 && r24 != 14 && r24 != 16 && r24 != 17) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public final l0 b() {
            d dVar;
            o0 o0Var;
            m0 m0Var;
            n0 n0Var;
            x9.a<bc.j<qb.g<?>>> aVar;
            o0 o0Var2;
            Iterator<ma.o0> it;
            t1 t1Var;
            l0 l0Var = l0.this;
            l0Var.getClass();
            ma.j jVar = this.f12949a;
            ma.a0 a0Var = this.f12950b;
            ma.q qVar = this.f12951c;
            ma.l0 l0Var2 = this.f12952d;
            b.a aVar2 = this.f12953e;
            lb.f fVar = this.f12956i;
            r0.a aVar3 = ma.r0.f10243a;
            l0 l0VarM0 = l0Var.M0(jVar, a0Var, qVar, l0Var2, aVar2, fVar);
            List<ma.w0> typeParameters = l0Var.getTypeParameters();
            ArrayList arrayList = new ArrayList(((ArrayList) typeParameters).size());
            p1 p1VarB = a6.a.B(typeParameters, this.f, l0VarM0, arrayList);
            t1 t1Var2 = t1.OUT_VARIANCE;
            cc.e0 e0Var = this.f12957j;
            cc.e0 e0VarK = p1VarB.k(e0Var, t1Var2);
            if (e0VarK != null) {
                t1 t1Var3 = t1.IN_VARIANCE;
                cc.e0 e0VarK2 = p1VarB.k(e0Var, t1Var3);
                if (e0VarK2 != null) {
                    l0VarM0.P0(e0VarK2);
                }
                ma.o0 o0Var3 = this.f12955h;
                if (o0Var3 != null) {
                    d dVarC = o0Var3.c(p1VarB);
                    dVar = dVarC != null ? dVarC : null;
                }
                ma.o0 o0Var4 = l0Var.f12947y;
                if (o0Var4 != null) {
                    cc.e0 e0VarK3 = p1VarB.k(o0Var4.getType(), t1Var3);
                    o0Var = e0VarK3 == null ? null : new o0(l0VarM0, new wb.d(l0VarM0, e0VarK3, o0Var4.getValue()), o0Var4.getAnnotations());
                } else {
                    o0Var = null;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator<ma.o0> it2 = l0Var.w.iterator();
                while (it2.hasNext()) {
                    ma.o0 next = it2.next();
                    cc.e0 e0VarK4 = p1VarB.k(next.getType(), t1Var3);
                    if (e0VarK4 == null) {
                        it = it2;
                        t1Var = t1Var3;
                        o0Var2 = null;
                    } else {
                        it = it2;
                        t1Var = t1Var3;
                        o0Var2 = new o0(l0VarM0, new wb.c(l0VarM0, e0VarK4, ((wb.f) next.getValue()).a(), next.getValue()), next.getAnnotations());
                    }
                    if (o0Var2 != null) {
                        arrayList2.add(o0Var2);
                    }
                    t1Var3 = t1Var;
                    it2 = it;
                }
                l0VarM0.Q0(e0VarK, arrayList, dVar, o0Var, arrayList2);
                m0 m0Var2 = l0Var.A;
                b.a aVar4 = b.a.FAKE_OVERRIDE;
                if (m0Var2 == null) {
                    m0Var = null;
                } else {
                    na.h annotations = m0Var2.getAnnotations();
                    ma.a0 a0Var2 = this.f12950b;
                    ma.q visibility = l0Var.A.getVisibility();
                    if (this.f12953e == aVar4 && ma.p.e(visibility.d())) {
                        visibility = ma.p.f10227h;
                    }
                    ma.q qVar2 = visibility;
                    m0 m0Var3 = l0Var.A;
                    boolean z10 = m0Var3.f12928e;
                    boolean z11 = m0Var3.f;
                    boolean z12 = m0Var3.f12931j;
                    b.a aVar5 = this.f12953e;
                    ma.l0 l0Var3 = this.f12952d;
                    m0Var = new m0(l0VarM0, annotations, a0Var2, qVar2, z10, z11, z12, aVar5, l0Var3 == null ? null : l0Var3.l(), aVar3);
                }
                if (m0Var != null) {
                    m0 m0Var4 = l0Var.A;
                    cc.e0 e0Var2 = m0Var4.f12961n;
                    m0Var.f12934m = l0.N0(p1VarB, m0Var4);
                    m0Var.M0(e0Var2 != null ? p1VarB.k(e0Var2, t1Var2) : null);
                }
                ma.n0 n0Var2 = l0Var.B;
                if (n0Var2 == null) {
                    n0Var = null;
                } else {
                    na.h annotations2 = n0Var2.getAnnotations();
                    ma.a0 a0Var3 = this.f12950b;
                    ma.q visibility2 = l0Var.B.getVisibility();
                    if (this.f12953e == aVar4 && ma.p.e(visibility2.d())) {
                        visibility2 = ma.p.f10227h;
                    }
                    ma.q qVar3 = visibility2;
                    boolean zQ = l0Var.B.Q();
                    boolean zIsExternal = l0Var.B.isExternal();
                    boolean zIsInline = l0Var.B.isInline();
                    b.a aVar6 = this.f12953e;
                    ma.l0 l0Var4 = this.f12952d;
                    n0Var = new n0(l0VarM0, annotations2, a0Var3, qVar3, zQ, zIsExternal, zIsInline, aVar6, l0Var4 == null ? null : l0Var4.f(), aVar3);
                }
                if (n0Var != null) {
                    List listM0 = x.M0(n0Var, l0Var.B.g(), p1VarB, false, false, null);
                    if (listM0 == null) {
                        listM0 = Collections.singletonList(n0.L0(n0Var, sb.b.e(this.f12949a).n(), l0Var.B.g().get(0).getAnnotations()));
                    }
                    if (listM0.size() != 1) {
                        throw new IllegalStateException();
                    }
                    n0Var.f12934m = l0.N0(p1VarB, l0Var.B);
                    a1 a1Var = (a1) listM0.get(0);
                    if (a1Var == null) {
                        n0.C(6);
                        throw null;
                    }
                    n0Var.f12969n = a1Var;
                }
                ma.s sVar = l0Var.C;
                u uVar = sVar == null ? null : new u(l0VarM0, sVar.getAnnotations());
                ma.s sVar2 = l0Var.D;
                l0VarM0.O0(m0Var, n0Var, uVar, sVar2 != null ? new u(l0VarM0, sVar2.getAnnotations()) : null);
                if (this.f12954g) {
                    kc.d dVar2 = new kc.d();
                    Iterator<? extends ma.l0> it3 = l0Var.e().iterator();
                    while (it3.hasNext()) {
                        dVar2.add(it3.next().c(p1VarB));
                    }
                    l0VarM0.w0(dVar2);
                }
                if (!l0Var.v() || (aVar = l0Var.f13049h) == null) {
                    return l0VarM0;
                }
                l0VarM0.E0(l0Var.f13048g, aVar);
                return l0VarM0;
            }
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(ma.j jVar, ma.l0 l0Var, na.h hVar, ma.a0 a0Var, ma.q qVar, boolean z10, lb.f fVar, b.a aVar, ma.r0 r0Var, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        super(jVar, hVar, fVar, z10, r0Var);
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (a0Var == null) {
            C(2);
            throw null;
        }
        if (qVar == null) {
            C(3);
            throw null;
        }
        if (fVar == null) {
            C(4);
            throw null;
        }
        if (aVar == null) {
            C(5);
            throw null;
        }
        if (r0Var == null) {
            C(6);
            throw null;
        }
        this.f12937l = null;
        this.w = Collections.emptyList();
        this.f12935j = a0Var;
        this.f12936k = qVar;
        this.f12938m = l0Var == null ? this : l0Var;
        this.f12939n = aVar;
        this.f12940p = z11;
        this.f12941q = z12;
        this.f12942r = z13;
        this.f12943s = z14;
        this.f12944t = z15;
        this.f12945v = z16;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void C(int r11) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.l0.C(int):void");
    }

    public static l0 L0(ma.j jVar, ma.a0 a0Var, p.h hVar, boolean z10, lb.f fVar, b.a aVar, ma.r0 r0Var) {
        h.a.C0201a c0201a = h.a.f10653a;
        if (jVar == null) {
            C(7);
            throw null;
        }
        if (hVar == null) {
            C(10);
            throw null;
        }
        if (fVar == null) {
            C(11);
            throw null;
        }
        if (r0Var != null) {
            return new l0(jVar, null, c0201a, a0Var, hVar, z10, fVar, aVar, r0Var, false, false, false, false, false, false);
        }
        C(13);
        throw null;
    }

    public static ma.u N0(p1 p1Var, ma.k0 k0Var) {
        if (k0Var == null) {
            C(31);
            throw null;
        }
        if (k0Var.Y() != null) {
            return k0Var.Y().c(p1Var);
        }
        return null;
    }

    @Override // ma.z
    public final boolean D0() {
        return this.f12943s;
    }

    @Override // ma.z
    public final boolean G() {
        return this.f12942r;
    }

    @Override // ma.c1
    public final boolean K() {
        return this.f12945v;
    }

    @Override // ma.b
    /* renamed from: K0, reason: merged with bridge method [inline-methods] */
    public final l0 b0(ma.j jVar, ma.a0 a0Var, ma.o oVar) {
        b.a aVar = b.a.FAKE_OVERRIDE;
        a aVar2 = new a();
        if (jVar == null) {
            a.a(0);
            throw null;
        }
        aVar2.f12949a = jVar;
        aVar2.f12952d = null;
        aVar2.f12950b = a0Var;
        if (oVar == null) {
            a.a(8);
            throw null;
        }
        aVar2.f12951c = oVar;
        aVar2.f12953e = aVar;
        aVar2.f12954g = false;
        l0 l0VarB = aVar2.b();
        if (l0VarB != null) {
            return l0VarB;
        }
        C(42);
        throw null;
    }

    public l0 M0(ma.j jVar, ma.a0 a0Var, ma.q qVar, ma.l0 l0Var, b.a aVar, lb.f fVar) {
        r0.a aVar2 = ma.r0.f10243a;
        if (jVar == null) {
            C(32);
            throw null;
        }
        if (a0Var == null) {
            C(33);
            throw null;
        }
        if (qVar == null) {
            C(34);
            throw null;
        }
        if (aVar == null) {
            C(35);
            throw null;
        }
        if (fVar != null) {
            return new l0(jVar, l0Var, getAnnotations(), a0Var, qVar, this.f, fVar, aVar, aVar2, this.f12940p, v(), this.f12942r, this.f12943s, isExternal(), this.f12945v);
        }
        C(36);
        throw null;
    }

    public final void O0(m0 m0Var, n0 n0Var, ma.s sVar, ma.s sVar2) {
        this.A = m0Var;
        this.B = n0Var;
        this.C = sVar;
        this.D = sVar2;
    }

    public void P0(cc.e0 e0Var) {
    }

    public final void Q0(cc.e0 e0Var, List list, ma.o0 o0Var, o0 o0Var2, List list2) {
        if (e0Var == null) {
            C(17);
            throw null;
        }
        if (list == null) {
            C(18);
            throw null;
        }
        if (list2 == null) {
            C(19);
            throw null;
        }
        this.f13008e = e0Var;
        this.f12948z = new ArrayList(list);
        this.f12947y = o0Var2;
        this.f12946x = o0Var;
        this.w = list2;
    }

    @Override // ma.a
    public <V> V Z(a.InterfaceC0187a<V> interfaceC0187a) {
        return null;
    }

    @Override // pa.q
    public final ma.l0 a() {
        ma.l0 l0Var = this.f12938m;
        ma.l0 l0VarA = l0Var == this ? this : l0Var.a();
        if (l0VarA != null) {
            return l0VarA;
        }
        C(38);
        throw null;
    }

    @Override // pa.w0, ma.a
    public final ma.o0 a0() {
        return this.f12946x;
    }

    @Override // ma.t0
    public final ma.l0 c(p1 p1Var) {
        if (p1Var == null) {
            C(27);
            throw null;
        }
        if (p1Var.h()) {
            return this;
        }
        a aVar = new a();
        l1 l1VarG = p1Var.g();
        if (l1VarG == null) {
            a.a(15);
            throw null;
        }
        aVar.f = l1VarG;
        aVar.f12952d = a();
        return aVar.b();
    }

    @Override // ma.a
    public final Collection<? extends ma.l0> e() {
        Collection<? extends ma.l0> collectionEmptyList = this.f12937l;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList != null) {
            return collectionEmptyList;
        }
        C(41);
        throw null;
    }

    @Override // ma.l0
    public final ma.n0 f() {
        return this.B;
    }

    @Override // pa.w0, ma.a
    public final cc.e0 getReturnType() {
        cc.e0 type = getType();
        if (type != null) {
            return type;
        }
        C(23);
        throw null;
    }

    @Override // pa.w0, ma.a
    public final List<ma.w0> getTypeParameters() {
        ArrayList arrayList = this.f12948z;
        if (arrayList != null) {
            return arrayList;
        }
        throw new IllegalStateException("typeParameters == null for ".concat(p.e0(this)));
    }

    @Override // ma.n, ma.z
    public final ma.q getVisibility() {
        ma.q qVar = this.f12936k;
        if (qVar != null) {
            return qVar;
        }
        C(25);
        throw null;
    }

    @Override // pa.w0, ma.a
    public final ma.o0 h0() {
        return this.f12947y;
    }

    public boolean isExternal() {
        return this.f12944t;
    }

    @Override // ma.z
    public final ma.a0 j() {
        ma.a0 a0Var = this.f12935j;
        if (a0Var != null) {
            return a0Var;
        }
        C(24);
        throw null;
    }

    @Override // ma.l0
    public final ma.s j0() {
        return this.D;
    }

    @Override // ma.b
    public final b.a k0() {
        b.a aVar = this.f12939n;
        if (aVar != null) {
            return aVar;
        }
        C(39);
        throw null;
    }

    @Override // ma.l0
    public final m0 l() {
        return this.A;
    }

    @Override // ma.l0
    public final ma.s n0() {
        return this.C;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.d(this, d10);
    }

    @Override // ma.a
    public final List<ma.o0> p0() {
        List<ma.o0> list = this.w;
        if (list != null) {
            return list;
        }
        C(22);
        throw null;
    }

    @Override // ma.b1
    public final boolean r0() {
        return this.f12940p;
    }

    @Override // ma.l0
    public final ArrayList t() {
        ArrayList arrayList = new ArrayList(2);
        m0 m0Var = this.A;
        if (m0Var != null) {
            arrayList.add(m0Var);
        }
        ma.n0 n0Var = this.B;
        if (n0Var != null) {
            arrayList.add(n0Var);
        }
        return arrayList;
    }

    @Override // ma.b1
    public boolean v() {
        return this.f12941q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ma.b
    public final void w0(Collection<? extends ma.b> collection) {
        if (collection != 0) {
            this.f12937l = collection;
        } else {
            C(40);
            throw null;
        }
    }
}
