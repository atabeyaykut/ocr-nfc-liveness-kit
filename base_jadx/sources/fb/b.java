package fb;

import eb.s;
import fb.a;
import java.util.ArrayList;
import java.util.HashMap;
import va.x;

/* loaded from: classes2.dex */
public final class b implements s.c {

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f5567i = "true".equals(System.getProperty("kotlin.ignore.old.metadata"));

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap f5568j;

    /* renamed from: a, reason: collision with root package name */
    public int[] f5569a = null;

    /* renamed from: b, reason: collision with root package name */
    public String f5570b = null;

    /* renamed from: c, reason: collision with root package name */
    public int f5571c = 0;

    /* renamed from: d, reason: collision with root package name */
    public String[] f5572d = null;

    /* renamed from: e, reason: collision with root package name */
    public String[] f5573e = null;
    public String[] f = null;

    /* renamed from: g, reason: collision with root package name */
    public a.EnumC0087a f5574g = null;

    /* renamed from: h, reason: collision with root package name */
    public String[] f5575h = null;

    public static abstract class a implements s.b {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f5576a = new ArrayList();

        @Override // eb.s.b
        public final void a() {
            f((String[]) this.f5576a.toArray(new String[0]));
        }

        @Override // eb.s.b
        public final void b(Object obj) {
            if (obj instanceof String) {
                this.f5576a.add((String) obj);
            }
        }

        @Override // eb.s.b
        public final void c(qb.f fVar) {
        }

        @Override // eb.s.b
        public final void d(lb.b bVar, lb.f fVar) {
        }

        @Override // eb.s.b
        public final s.a e(lb.b bVar) {
            return null;
        }

        public abstract void f(String[] strArr);
    }

    /* renamed from: fb.b$b, reason: collision with other inner class name */
    public class C0088b implements s.a {
        public C0088b() {
        }

        @Override // eb.s.a
        public final void a() {
        }

        @Override // eb.s.a
        public final void b(lb.f fVar, lb.b bVar, lb.f fVar2) {
        }

        @Override // eb.s.a
        public final s.b c(lb.f fVar) {
            String strO = fVar.o();
            if ("d1".equals(strO)) {
                return new fb.c(this);
            }
            if ("d2".equals(strO)) {
                return new fb.d(this);
            }
            return null;
        }

        @Override // eb.s.a
        public final s.a d(lb.b bVar, lb.f fVar) {
            return null;
        }

        @Override // eb.s.a
        public final void e(Object obj, lb.f fVar) {
            String strO = fVar.o();
            boolean zEquals = "k".equals(strO);
            b bVar = b.this;
            if (zEquals) {
                if (obj instanceof Integer) {
                    a.EnumC0087a enumC0087a = (a.EnumC0087a) a.EnumC0087a.f5559b.get(Integer.valueOf(((Integer) obj).intValue()));
                    if (enumC0087a == null) {
                        enumC0087a = a.EnumC0087a.UNKNOWN;
                    }
                    bVar.f5574g = enumC0087a;
                    return;
                }
                return;
            }
            if ("mv".equals(strO)) {
                if (obj instanceof int[]) {
                    bVar.f5569a = (int[]) obj;
                    return;
                }
                return;
            }
            if ("xs".equals(strO)) {
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (str.isEmpty()) {
                        return;
                    }
                    bVar.f5570b = str;
                    return;
                }
                return;
            }
            if ("xi".equals(strO)) {
                if (obj instanceof Integer) {
                    bVar.f5571c = ((Integer) obj).intValue();
                }
            } else if ("pn".equals(strO) && (obj instanceof String) && !((String) obj).isEmpty()) {
                bVar.getClass();
            }
        }

        @Override // eb.s.a
        public final void f(lb.f fVar, qb.f fVar2) {
        }
    }

    public class c implements s.a {
        public c() {
        }

        @Override // eb.s.a
        public final void a() {
        }

        @Override // eb.s.a
        public final void b(lb.f fVar, lb.b bVar, lb.f fVar2) {
        }

        @Override // eb.s.a
        public final s.b c(lb.f fVar) {
            if ("b".equals(fVar.o())) {
                return new e(this);
            }
            return null;
        }

        @Override // eb.s.a
        public final s.a d(lb.b bVar, lb.f fVar) {
            return null;
        }

        @Override // eb.s.a
        public final void e(Object obj, lb.f fVar) {
        }

        @Override // eb.s.a
        public final void f(lb.f fVar, qb.f fVar2) {
        }
    }

    public class d implements s.a {
        public d() {
        }

        @Override // eb.s.a
        public final void a() {
        }

        @Override // eb.s.a
        public final void b(lb.f fVar, lb.b bVar, lb.f fVar2) {
        }

        @Override // eb.s.a
        public final s.b c(lb.f fVar) {
            String strO = fVar.o();
            if ("data".equals(strO) || "filePartClassNames".equals(strO)) {
                return new f(this);
            }
            if ("strings".equals(strO)) {
                return new g(this);
            }
            return null;
        }

        @Override // eb.s.a
        public final s.a d(lb.b bVar, lb.f fVar) {
            return null;
        }

        @Override // eb.s.a
        public final void e(Object obj, lb.f fVar) {
            String strO = fVar.o();
            boolean zEquals = "version".equals(strO);
            b bVar = b.this;
            if (zEquals) {
                if (obj instanceof int[]) {
                    bVar.f5569a = (int[]) obj;
                }
            } else if ("multifileClassName".equals(strO)) {
                bVar.f5570b = obj instanceof String ? (String) obj : null;
            }
        }

        @Override // eb.s.a
        public final void f(lb.f fVar, qb.f fVar2) {
        }
    }

    static {
        HashMap map = new HashMap();
        f5568j = map;
        map.put(lb.b.l(new lb.c("kotlin.jvm.internal.KotlinClass")), a.EnumC0087a.CLASS);
        map.put(lb.b.l(new lb.c("kotlin.jvm.internal.KotlinFileFacade")), a.EnumC0087a.FILE_FACADE);
        map.put(lb.b.l(new lb.c("kotlin.jvm.internal.KotlinMultifileClass")), a.EnumC0087a.MULTIFILE_CLASS);
        map.put(lb.b.l(new lb.c("kotlin.jvm.internal.KotlinMultifileClassPart")), a.EnumC0087a.MULTIFILE_CLASS_PART);
        map.put(lb.b.l(new lb.c("kotlin.jvm.internal.KotlinSyntheticClass")), a.EnumC0087a.SYNTHETIC_CLASS);
    }

    @Override // eb.s.c
    public final void a() {
    }

    @Override // eb.s.c
    public final s.a b(lb.b bVar, ra.b bVar2) {
        a.EnumC0087a enumC0087a;
        lb.c cVarB = bVar.b();
        if (cVarB.equals(x.f18383a)) {
            return new C0088b();
        }
        if (cVarB.equals(x.f18396o)) {
            return new c();
        }
        if (f5567i || this.f5574g != null || (enumC0087a = (a.EnumC0087a) f5568j.get(bVar)) == null) {
            return null;
        }
        this.f5574g = enumC0087a;
        return new d();
    }
}
