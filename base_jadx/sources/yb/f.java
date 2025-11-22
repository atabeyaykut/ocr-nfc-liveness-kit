package yb;

import gb.a;
import ja.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import ma.a1;
import ma.r0;
import qb.l;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final ma.b0 f19401a;

    /* renamed from: b, reason: collision with root package name */
    public final ma.d0 f19402b;

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19403a;

        static {
            int[] r02 = new int[a.b.c.EnumC0109c.values().length];
            try {
                r02[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                r02[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                r02[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                r02[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                r02[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                r02[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                r02[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                r02[7] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                r02[8] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                r02[9] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                r02[10] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                r02[11] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                r02[12] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            f19403a = r02;
        }
    }

    public f(ma.b0 module, ma.d0 notFoundClasses) {
        kotlin.jvm.internal.h.f(module, "module");
        kotlin.jvm.internal.h.f(notFoundClasses, "notFoundClasses");
        this.f19401a = module;
        this.f19402b = notFoundClasses;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [l9.g] */
    public final na.d a(gb.a proto, ib.c nameResolver) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        ma.e eVarC = ma.t.c(this.f19401a, a6.a.n(nameResolver, proto.f6151c), this.f19402b);
        Map mapS0 = m9.w.f10174a;
        if (proto.f6152d.size() != 0 && !ec.i.f(eVarC) && ob.i.n(eVarC, 5)) {
            Collection<ma.d> collectionK = eVarC.k();
            kotlin.jvm.internal.h.e(collectionK, "annotationClass.constructors");
            ma.d dVar = (ma.d) m9.t.q1(collectionK);
            if (dVar != null) {
                List<a1> listG = dVar.g();
                kotlin.jvm.internal.h.e(listG, "constructor.valueParameters");
                List<a1> list = listG;
                int r22 = b8.f.V(m9.n.Q0(list));
                if (r22 < 16) {
                    r22 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(r22);
                for (Object obj : list) {
                    linkedHashMap.put(((a1) obj).getName(), obj);
                }
                List<a.b> list2 = proto.f6152d;
                kotlin.jvm.internal.h.e(list2, "proto.argumentList");
                ArrayList arrayList = new ArrayList();
                for (a.b it : list2) {
                    kotlin.jvm.internal.h.e(it, "it");
                    a1 a1Var = (a1) linkedHashMap.get(a6.a.o(nameResolver, it.f6158c));
                    if (a1Var != null) {
                        lb.f fVarO = a6.a.o(nameResolver, it.f6158c);
                        cc.e0 type = a1Var.getType();
                        kotlin.jvm.internal.h.e(type, "parameter.type");
                        a.b.c cVar = it.f6159d;
                        kotlin.jvm.internal.h.e(cVar, "proto.value");
                        qb.g<?> gVarC = c(type, cVar, nameResolver);
                        gVar = b(gVarC, type, cVar) ? gVarC : null;
                        if (gVar == null) {
                            String message = "Unexpected argument value: actual type " + cVar.f6168c + " != expected type " + type;
                            kotlin.jvm.internal.h.f(message, "message");
                            gVar = new l.a(message);
                        }
                        gVar = new l9.g(fVarO, gVar);
                    }
                    if (gVar != null) {
                        arrayList.add(gVar);
                    }
                }
                mapS0 = m9.e0.S0(arrayList);
            }
        }
        return new na.d(eVarC.q(), mapS0, r0.f10243a);
    }

    public final boolean b(qb.g<?> gVar, cc.e0 e0Var, a.b.c cVar) {
        a.b.c.EnumC0109c enumC0109c = cVar.f6168c;
        int r02 = enumC0109c == null ? -1 : a.f19403a[enumC0109c.ordinal()];
        if (r02 != 10) {
            ma.b0 b0Var = this.f19401a;
            if (r02 != 13) {
                return kotlin.jvm.internal.h.a(gVar.a(b0Var), e0Var);
            }
            if (!((gVar instanceof qb.b) && ((List) ((qb.b) gVar).f13469a).size() == cVar.f6175l.size())) {
                throw new IllegalStateException(("Deserialized ArrayValue should have the same number of elements as the original array value: " + gVar).toString());
            }
            cc.e0 e0VarG = b0Var.m().g(e0Var);
            qb.b bVar = (qb.b) gVar;
            kotlin.jvm.internal.h.f((Collection) bVar.f13469a, "<this>");
            Iterable dVar = new ca.d(0, r0.size() - 1);
            if ((dVar instanceof Collection) && ((Collection) dVar).isEmpty()) {
                return true;
            }
            Iterator<Integer> it = dVar.iterator();
            while (((ca.c) it).f2251c) {
                int r12 = ((m9.b0) it).nextInt();
                qb.g<?> gVar2 = (qb.g) ((List) bVar.f13469a).get(r12);
                a.b.c cVar2 = cVar.f6175l.get(r12);
                kotlin.jvm.internal.h.e(cVar2, "value.getArrayElement(i)");
                if (!b(gVar2, e0VarG, cVar2)) {
                }
            }
            return true;
        }
        ma.g gVarN = e0Var.M0().n();
        ma.e eVar = gVarN instanceof ma.e ? (ma.e) gVarN : null;
        if (eVar == null) {
            return true;
        }
        lb.f fVar = ja.k.f8326e;
        if (ja.k.c(eVar, o.a.P)) {
            return true;
        }
        return false;
    }

    public final qb.g<?> c(cc.e0 e0Var, a.b.c cVar, ib.c nameResolver) {
        qb.g<?> eVar;
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        boolean zI = androidx.room.util.a.i(ib.b.M, cVar.f6177n, "IS_UNSIGNED.get(value.flags)");
        a.b.c.EnumC0109c enumC0109c = cVar.f6168c;
        switch (enumC0109c == null ? -1 : a.f19403a[enumC0109c.ordinal()]) {
            case 1:
                byte b10 = (byte) cVar.f6169d;
                return zI ? new qb.x(b10) : new qb.d(b10);
            case 2:
                eVar = new qb.e((char) cVar.f6169d);
                break;
            case 3:
                short s7 = (short) cVar.f6169d;
                return zI ? new qb.a0(s7) : new qb.v(s7);
            case 4:
                int r6 = (int) cVar.f6169d;
                if (zI) {
                    eVar = new qb.y(r6);
                    break;
                } else {
                    eVar = new qb.n(r6);
                    break;
                }
            case 5:
                long j10 = cVar.f6169d;
                return zI ? new qb.z(j10) : new qb.t(j10);
            case 6:
                eVar = new qb.m(cVar.f6170e);
                break;
            case 7:
                eVar = new qb.j(cVar.f);
                break;
            case 8:
                eVar = new qb.c(cVar.f6169d != 0);
                break;
            case 9:
                eVar = new qb.w(nameResolver.getString(cVar.f6171g));
                break;
            case 10:
                eVar = new qb.s(a6.a.n(nameResolver, cVar.f6172h), cVar.f6176m);
                break;
            case 11:
                eVar = new qb.k(a6.a.n(nameResolver, cVar.f6172h), a6.a.o(nameResolver, cVar.f6173j));
                break;
            case 12:
                gb.a aVar = cVar.f6174k;
                kotlin.jvm.internal.h.e(aVar, "value.annotation");
                eVar = new qb.a(a(aVar, nameResolver));
                break;
            case 13:
                List<a.b.c> list = cVar.f6175l;
                kotlin.jvm.internal.h.e(list, "value.arrayElementList");
                List<a.b.c> list2 = list;
                ArrayList arrayList = new ArrayList(m9.n.Q0(list2));
                for (a.b.c it : list2) {
                    cc.m0 m0VarF = this.f19401a.m().f();
                    kotlin.jvm.internal.h.e(m0VarF, "builtIns.anyType");
                    kotlin.jvm.internal.h.e(it, "it");
                    arrayList.add(c(m0VarF, it, nameResolver));
                }
                return new p(arrayList, e0Var);
            default:
                StringBuilder sb2 = new StringBuilder("Unsupported annotation argument type: ");
                sb2.append(cVar.f6168c);
                sb2.append(" (expected ");
                sb2.append(e0Var);
                sb2.append(')');
                throw new IllegalStateException(sb2.toString().toString());
        }
        return eVar;
    }
}
