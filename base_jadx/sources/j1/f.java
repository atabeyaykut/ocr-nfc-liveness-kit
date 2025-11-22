package j1;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7973a = new ArrayList();

    public static final class a<Z, R> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<Z> f7974a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<R> f7975b;

        /* renamed from: c, reason: collision with root package name */
        public final e<Z, R> f7976c;

        public a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
            this.f7974a = cls;
            this.f7975b = cls2;
            this.f7976c = eVar;
        }
    }

    @NonNull
    public final synchronized <Z, R> e<Z, R> a(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.f7977a;
        }
        Iterator it = this.f7973a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f7974a.isAssignableFrom(cls) && cls2.isAssignableFrom(aVar.f7975b)) {
                return aVar.f7976c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    @NonNull
    public final synchronized ArrayList b(@NonNull Class cls, @NonNull Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator it = this.f7973a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if ((aVar.f7974a.isAssignableFrom(cls) && cls2.isAssignableFrom(aVar.f7975b)) && !arrayList.contains(aVar.f7975b)) {
                arrayList.add(aVar.f7975b);
            }
        }
        return arrayList;
    }
}
