package qd;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f13575d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public Object f13576a;

    /* renamed from: b, reason: collision with root package name */
    public m f13577b;

    /* renamed from: c, reason: collision with root package name */
    public g f13578c;

    public g(Object obj, m mVar) {
        this.f13576a = obj;
        this.f13577b = mVar;
    }

    public static g a(Object obj, m mVar) {
        ArrayList arrayList = f13575d;
        synchronized (arrayList) {
            int size = arrayList.size();
            if (size <= 0) {
                return new g(obj, mVar);
            }
            g gVar = (g) arrayList.remove(size - 1);
            gVar.f13576a = obj;
            gVar.f13577b = mVar;
            gVar.f13578c = null;
            return gVar;
        }
    }
}
