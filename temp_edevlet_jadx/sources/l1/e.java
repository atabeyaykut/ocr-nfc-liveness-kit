package l1;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import v0.j;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f9329a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f9330b = new HashMap();

    public static class a<T, R> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f9331a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<R> f9332b;

        /* renamed from: c, reason: collision with root package name */
        public final j<T, R> f9333c;

        public a(@NonNull Class<T> cls, @NonNull Class<R> cls2, j<T, R> jVar) {
            this.f9331a = cls;
            this.f9332b = cls2;
            this.f9333c = jVar;
        }
    }

    @NonNull
    public final synchronized List<a<?, ?>> a(@NonNull String str) {
        List<a<?, ?>> arrayList;
        if (!this.f9329a.contains(str)) {
            this.f9329a.add(str);
        }
        arrayList = (List) this.f9330b.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f9330b.put(str, arrayList);
        }
        return arrayList;
    }

    @NonNull
    public final synchronized ArrayList b(@NonNull Class cls, @NonNull Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f9329a.iterator();
        while (it.hasNext()) {
            List<a> list = (List) this.f9330b.get((String) it.next());
            if (list != null) {
                for (a aVar : list) {
                    if ((aVar.f9331a.isAssignableFrom(cls) && cls2.isAssignableFrom(aVar.f9332b)) && !arrayList.contains(aVar.f9332b)) {
                        arrayList.add(aVar.f9332b);
                    }
                }
            }
        }
        return arrayList;
    }
}
