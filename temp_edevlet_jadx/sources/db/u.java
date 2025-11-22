package db;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import m9.a0;
import m9.y;
import m9.z;

/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f4808a = new LinkedHashMap();

    public final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f4809a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ u f4810b;

        /* renamed from: db.u$a$a, reason: collision with other inner class name */
        public final class C0072a {

            /* renamed from: a, reason: collision with root package name */
            public final String f4811a;

            /* renamed from: b, reason: collision with root package name */
            public final ArrayList f4812b = new ArrayList();

            /* renamed from: c, reason: collision with root package name */
            public l9.g<String, w> f4813c = new l9.g<>(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, null);

            public C0072a(a aVar, String str) {
                this.f4811a = str;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void a(String type, h... hVarArr) {
                w wVar;
                kotlin.jvm.internal.h.f(type, "type");
                ArrayList arrayList = this.f4812b;
                if (hVarArr.length == 0) {
                    wVar = null;
                } else {
                    z zVar = new z(new m9.l(hVarArr));
                    int r6 = b8.f.V(m9.n.Q0(zVar));
                    if (r6 < 16) {
                        r6 = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(r6);
                    Iterator it = zVar.iterator();
                    while (true) {
                        a0 a0Var = (a0) it;
                        if (!a0Var.hasNext()) {
                            break;
                        }
                        y yVar = (y) a0Var.next();
                        linkedHashMap.put(Integer.valueOf(yVar.f10176a), (h) yVar.f10177b);
                    }
                    wVar = new w(linkedHashMap);
                }
                arrayList.add(new l9.g(type, wVar));
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void b(String type, h... hVarArr) {
                kotlin.jvm.internal.h.f(type, "type");
                z zVar = new z(new m9.l(hVarArr));
                int r52 = b8.f.V(m9.n.Q0(zVar));
                if (r52 < 16) {
                    r52 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(r52);
                Iterator it = zVar.iterator();
                while (true) {
                    a0 a0Var = (a0) it;
                    if (!a0Var.hasNext()) {
                        this.f4813c = new l9.g<>(type, new w(linkedHashMap));
                        return;
                    } else {
                        y yVar = (y) a0Var.next();
                        linkedHashMap.put(Integer.valueOf(yVar.f10176a), (h) yVar.f10177b);
                    }
                }
            }

            public final void c(tb.c type) {
                kotlin.jvm.internal.h.f(type, "type");
                String strQ = type.q();
                kotlin.jvm.internal.h.e(strQ, "type.desc");
                this.f4813c = new l9.g<>(strQ, null);
            }
        }

        public a(u uVar, String className) {
            kotlin.jvm.internal.h.f(className, "className");
            this.f4810b = uVar;
            this.f4809a = className;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(String str, x9.l<? super C0072a, l9.m> lVar) {
            LinkedHashMap linkedHashMap = this.f4810b.f4808a;
            C0072a c0072a = new C0072a(this, str);
            lVar.invoke(c0072a);
            ArrayList arrayList = c0072a.f4812b;
            ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add((String) ((l9.g) it.next()).f9582a);
            }
            String ret = c0072a.f4813c.f9582a;
            String name = c0072a.f4811a;
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(ret, "ret");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(name);
            sb2.append('(');
            sb2.append(m9.t.g1(arrayList2, "", null, null, eb.y.f5239a, 30));
            sb2.append(')');
            if (ret.length() > 1) {
                ret = "L" + ret + ';';
            }
            sb2.append(ret);
            String jvmDescriptor = sb2.toString();
            String internalName = this.f4809a;
            kotlin.jvm.internal.h.f(internalName, "internalName");
            kotlin.jvm.internal.h.f(jvmDescriptor, "jvmDescriptor");
            String str2 = internalName + '.' + jvmDescriptor;
            w wVar = c0072a.f4813c.f9583b;
            ArrayList arrayList3 = new ArrayList(m9.n.Q0(arrayList));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList3.add((w) ((l9.g) it2.next()).f9583b);
            }
            linkedHashMap.put(str2, new n(wVar, arrayList3));
        }
    }
}
