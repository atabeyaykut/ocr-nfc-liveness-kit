package da;

import com.google.android.gms.internal.clearcut.d0;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import lc.w;

/* loaded from: classes2.dex */
public final class t {

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4728a;

        static {
            int[] r12 = new int[g.d.d(3).length];
            try {
                r12[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                r12[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                r12[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f4728a = r12;
        }
    }

    public static final String a(Type type) {
        String name;
        Object next;
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            lc.h hVarR0 = lc.q.R0(u.f4729a, type);
            StringBuilder sb2 = new StringBuilder();
            Iterator it = hVarR0.iterator();
            if (!it.hasNext()) {
                throw new NoSuchElementException("Sequence is empty.");
            }
            do {
                next = it.next();
            } while (it.hasNext());
            sb2.append(((Class) next).getName());
            sb2.append(mc.j.A("[]", w.T0(hVarR0)));
            name = sb2.toString();
        } else {
            name = cls.getName();
        }
        kotlin.jvm.internal.h.e(name, "{\n        if (type.isArr…   } else type.name\n    }");
        return name;
    }

    public static final Type b(n nVar, boolean z10) {
        e eVarB = nVar.b();
        if (eVarB instanceof o) {
            return new s((o) eVarB);
        }
        if (!(eVarB instanceof d)) {
            throw new UnsupportedOperationException("Unsupported type classifier: " + nVar);
        }
        d dVar = (d) eVarB;
        Class clsR = z10 ? d0.r(dVar) : d0.q(dVar);
        List<p> arguments = nVar.getArguments();
        if (arguments.isEmpty()) {
            return clsR;
        }
        if (!clsR.isArray()) {
            return c(clsR, arguments);
        }
        if (clsR.getComponentType().isPrimitive()) {
            return clsR;
        }
        p pVar = (p) m9.t.r1(arguments);
        if (pVar == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + nVar);
        }
        int r12 = pVar.f4715a;
        int r13 = r12 == 0 ? -1 : a.f4728a[g.d.c(r12)];
        if (r13 == -1 || r13 == 1) {
            return clsR;
        }
        if (r13 != 2 && r13 != 3) {
            throw new j7.p();
        }
        n nVar2 = pVar.f4716b;
        kotlin.jvm.internal.h.c(nVar2);
        Type typeB = b(nVar2, false);
        return typeB instanceof Class ? clsR : new da.a(typeB);
    }

    public static final r c(Class cls, List list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(m9.n.Q0(list2));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(d((p) it.next()));
            }
            return new r(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            List list3 = list;
            ArrayList arrayList2 = new ArrayList(m9.n.Q0(list3));
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(d((p) it2.next()));
            }
            return new r(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        r rVarC = c(declaringClass, list.subList(length, list.size()));
        List listSubList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(m9.n.Q0(listSubList));
        Iterator it3 = listSubList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(d((p) it3.next()));
        }
        return new r(cls, rVarC, arrayList3);
    }

    public static final Type d(p pVar) {
        int r02 = pVar.f4715a;
        if (r02 == 0) {
            return v.f4730c;
        }
        n nVar = pVar.f4716b;
        kotlin.jvm.internal.h.c(nVar);
        int r03 = g.d.c(r02);
        if (r03 == 0) {
            return b(nVar, true);
        }
        if (r03 == 1) {
            return new v(null, b(nVar, true));
        }
        if (r03 == 2) {
            return new v(b(nVar, true), null);
        }
        throw new j7.p();
    }
}
