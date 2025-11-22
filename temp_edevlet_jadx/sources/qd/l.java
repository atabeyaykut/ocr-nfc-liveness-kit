package qd;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f13589a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final a[] f13590b = new a[4];

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f13591a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public final HashMap f13592b = new HashMap();

        /* renamed from: c, reason: collision with root package name */
        public final HashMap f13593c = new HashMap();

        /* renamed from: d, reason: collision with root package name */
        public final StringBuilder f13594d = new StringBuilder(128);

        /* renamed from: e, reason: collision with root package name */
        public Class<?> f13595e;
        public boolean f;

        public final boolean a(Method method, Class<?> cls) {
            StringBuilder sb2 = this.f13594d;
            sb2.setLength(0);
            sb2.append(method.getName());
            sb2.append('>');
            sb2.append(cls.getName());
            String string = sb2.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            HashMap map = this.f13593c;
            Class cls2 = (Class) map.put(string, declaringClass);
            if (cls2 == null || cls2.isAssignableFrom(declaringClass)) {
                return true;
            }
            map.put(string, cls2);
            return false;
        }
    }

    public static ArrayList a(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f13591a);
        aVar.f13591a.clear();
        aVar.f13592b.clear();
        aVar.f13593c.clear();
        int r22 = 0;
        aVar.f13594d.setLength(0);
        aVar.f13595e = null;
        aVar.f = false;
        synchronized (f13590b) {
            while (true) {
                if (r22 >= 4) {
                    break;
                }
                a[] aVarArr = f13590b;
                if (aVarArr[r22] == null) {
                    aVarArr[r22] = aVar;
                    break;
                }
                r22++;
            }
        }
        return arrayList;
    }

    public static a b() {
        synchronized (f13590b) {
            for (int r12 = 0; r12 < 4; r12++) {
                a[] aVarArr = f13590b;
                a aVar = aVarArr[r12];
                if (aVar != null) {
                    aVarArr[r12] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }
}
