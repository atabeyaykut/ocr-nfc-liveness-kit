package va;

import bc.c;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class a0<T> implements z<T> {

    /* renamed from: b, reason: collision with root package name */
    public final Map<lb.c, T> f18318b;

    /* renamed from: c, reason: collision with root package name */
    public final c.j f18319c = new bc.c("Java nullability annotation states").e(new a(this));

    public static final class a extends kotlin.jvm.internal.j implements x9.l<lb.c, T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ a0<T> f18320a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(a0<T> a0Var) {
            super(1);
            this.f18320a = a0Var;
        }

        @Override // x9.l
        public final Object invoke(lb.c cVar) {
            T next;
            lb.c it = cVar;
            kotlin.jvm.internal.h.e(it, "it");
            Map<lb.c, T> values = this.f18320a.f18318b;
            kotlin.jvm.internal.h.f(values, "values");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<Map.Entry<lb.c, T>> it2 = values.entrySet().iterator();
            while (true) {
                boolean z10 = true;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<lb.c, T> next2 = it2.next();
                lb.c packageName = next2.getKey();
                if (!kotlin.jvm.internal.h.a(it, packageName)) {
                    kotlin.jvm.internal.h.f(packageName, "packageName");
                    if (!kotlin.jvm.internal.h.a(it.d() ? null : it.e(), packageName)) {
                        z10 = false;
                    }
                }
                if (z10) {
                    linkedHashMap.put(next2.getKey(), next2.getValue());
                }
            }
            if (!(!linkedHashMap.isEmpty())) {
                linkedHashMap = null;
            }
            if (linkedHashMap == null) {
                return null;
            }
            Iterator<T> it3 = linkedHashMap.entrySet().iterator();
            if (it3.hasNext()) {
                next = it3.next();
                if (it3.hasNext()) {
                    int length = lb.e.a((lb.c) ((Map.Entry) next).getKey(), it).b().length();
                    do {
                        T next3 = it3.next();
                        int length2 = lb.e.a((lb.c) ((Map.Entry) next3).getKey(), it).b().length();
                        if (length > length2) {
                            next = next3;
                            length = length2;
                        }
                    } while (it3.hasNext());
                }
            } else {
                next = null;
            }
            Map.Entry entry = (Map.Entry) next;
            if (entry != null) {
                return entry.getValue();
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a0(Map<lb.c, ? extends T> map) {
        this.f18318b = map;
    }
}
