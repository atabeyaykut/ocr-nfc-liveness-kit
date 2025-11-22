package x0;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import r1.a;
import x0.j;

/* loaded from: classes.dex */
public final class u<Data, ResourceType, Transcode> {

    /* renamed from: a, reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f19089a;

    /* renamed from: b, reason: collision with root package name */
    public final List<? extends k<Data, ResourceType, Transcode>> f19090b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19091c;

    public u(Class cls, Class cls2, Class cls3, List list, a.c cVar) {
        this.f19089a = cVar;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f19090b = list;
        this.f19091c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final w a(int r15, int r16, @NonNull v0.h hVar, com.bumptech.glide.load.data.e eVar, j.b bVar) throws r {
        Pools.Pool<List<Throwable>> pool = this.f19089a;
        List<Throwable> listAcquire = pool.acquire();
        q1.l.b(listAcquire);
        List<Throwable> list = listAcquire;
        try {
            List<? extends k<Data, ResourceType, Transcode>> list2 = this.f19090b;
            int size = list2.size();
            w wVarA = null;
            for (int r72 = 0; r72 < size; r72++) {
                try {
                    wVarA = list2.get(r72).a(r15, r16, hVar, eVar, bVar);
                } catch (r e10) {
                    list.add(e10);
                }
                if (wVarA != null) {
                    break;
                }
            }
            if (wVarA != null) {
                return wVarA;
            }
            throw new r(this.f19091c, new ArrayList(list));
        } finally {
            pool.release(list);
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f19090b.toArray()) + '}';
    }
}
