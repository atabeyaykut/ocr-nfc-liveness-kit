package vb;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m9.t;
import m9.v;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final a f18420c = new a();

    /* renamed from: d, reason: collision with root package name */
    public static int f18421d = 1;

    /* renamed from: e, reason: collision with root package name */
    public static final int f18422e;
    public static final int f;

    /* renamed from: g, reason: collision with root package name */
    public static final int f18423g;

    /* renamed from: h, reason: collision with root package name */
    public static final int f18424h;

    /* renamed from: i, reason: collision with root package name */
    public static final int f18425i;

    /* renamed from: j, reason: collision with root package name */
    public static final int f18426j;

    /* renamed from: k, reason: collision with root package name */
    public static final int f18427k;

    /* renamed from: l, reason: collision with root package name */
    public static final int f18428l;

    /* renamed from: m, reason: collision with root package name */
    public static final d f18429m;

    /* renamed from: n, reason: collision with root package name */
    public static final d f18430n;

    /* renamed from: o, reason: collision with root package name */
    public static final d f18431o;

    /* renamed from: p, reason: collision with root package name */
    public static final d f18432p;

    /* renamed from: q, reason: collision with root package name */
    public static final d f18433q;

    /* renamed from: r, reason: collision with root package name */
    public static final ArrayList f18434r;

    /* renamed from: s, reason: collision with root package name */
    public static final ArrayList f18435s;

    /* renamed from: a, reason: collision with root package name */
    public final List<c> f18436a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18437b;

    public static final class a {

        /* renamed from: vb.d$a$a, reason: collision with other inner class name */
        public static final class C0289a {

            /* renamed from: a, reason: collision with root package name */
            public final int f18438a;

            /* renamed from: b, reason: collision with root package name */
            public final String f18439b;

            public C0289a(int r12, String str) {
                this.f18438a = r12;
                this.f18439b = str;
            }
        }
    }

    static {
        a.C0289a c0289a;
        int r02 = f18421d;
        int r12 = r02 << 1;
        f18422e = r02;
        int r22 = r12 << 1;
        f = r12;
        int r32 = r22 << 1;
        f18423g = r22;
        int r42 = r32 << 1;
        f18424h = r32;
        int r52 = r42 << 1;
        f18425i = r42;
        int r6 = r52 << 1;
        f18426j = r52;
        f18421d = r6 << 1;
        int r62 = r6 - 1;
        f18427k = r62;
        int r82 = r02 | r12 | r22;
        f18428l = r82;
        f18429m = new d(r62);
        f18430n = new d(r42 | r52);
        new d(r02);
        new d(r12);
        new d(r22);
        f18431o = new d(r82);
        new d(r32);
        f18432p = new d(r42);
        f18433q = new d(r52);
        new d(r12 | r42 | r52);
        Field[] fields = d.class.getFields();
        kotlin.jvm.internal.h.e(fields, "T::class.java.fields");
        ArrayList arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            a.C0289a c0289a2 = null;
            if (!it.hasNext()) {
                break;
            }
            Field field2 = (Field) it.next();
            Object obj = field2.get(null);
            d dVar = obj instanceof d ? (d) obj : null;
            if (dVar != null) {
                String name = field2.getName();
                kotlin.jvm.internal.h.e(name, "field.name");
                c0289a2 = new a.C0289a(dVar.f18437b, name);
            }
            if (c0289a2 != null) {
                arrayList2.add(c0289a2);
            }
        }
        f18434r = arrayList2;
        Field[] fields2 = d.class.getFields();
        kotlin.jvm.internal.h.e(fields2, "T::class.java.fields");
        ArrayList arrayList3 = new ArrayList();
        for (Field field3 : fields2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList3.add(field3);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (kotlin.jvm.internal.h.a(((Field) next).getType(), Integer.TYPE)) {
                arrayList4.add(next);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator it3 = arrayList4.iterator();
        while (it3.hasNext()) {
            Field field4 = (Field) it3.next();
            Object obj2 = field4.get(null);
            kotlin.jvm.internal.h.d(obj2, "null cannot be cast to non-null type kotlin.Int");
            int r33 = ((Integer) obj2).intValue();
            if (r33 == ((-r33) & r33)) {
                String name2 = field4.getName();
                kotlin.jvm.internal.h.e(name2, "field.name");
                c0289a = new a.C0289a(r33, name2);
            } else {
                c0289a = null;
            }
            if (c0289a != null) {
                arrayList5.add(c0289a);
            }
        }
        f18435s = arrayList5;
    }

    public /* synthetic */ d(int r22) {
        this(r22, v.f10173a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(int r22, List<? extends c> excludes) {
        kotlin.jvm.internal.h.f(excludes, "excludes");
        this.f18436a = excludes;
        Iterator it = excludes.iterator();
        while (it.hasNext()) {
            r22 &= ~((c) it.next()).a();
        }
        this.f18437b = r22;
    }

    public final boolean a(int r22) {
        return (r22 & this.f18437b) != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!kotlin.jvm.internal.h.a(d.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        kotlin.jvm.internal.h.d(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter");
        d dVar = (d) obj;
        return kotlin.jvm.internal.h.a(this.f18436a, dVar.f18436a) && this.f18437b == dVar.f18437b;
    }

    public final int hashCode() {
        return (this.f18436a.hashCode() * 31) + this.f18437b;
    }

    public final String toString() throws IOException {
        Object next;
        Iterator it = f18434r.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((a.C0289a) next).f18438a == this.f18437b) {
                break;
            }
        }
        a.C0289a c0289a = (a.C0289a) next;
        String strG1 = c0289a != null ? c0289a.f18439b : null;
        if (strG1 == null) {
            ArrayList arrayList = f18435s;
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                a.C0289a c0289a2 = (a.C0289a) it2.next();
                String str = a(c0289a2.f18438a) ? c0289a2.f18439b : null;
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            strG1 = t.g1(arrayList2, " | ", null, null, null, 62);
        }
        return android.support.v4.media.a.j(android.support.v4.media.a.l("DescriptorKindFilter(", strG1, ", "), this.f18436a, ')');
    }
}
