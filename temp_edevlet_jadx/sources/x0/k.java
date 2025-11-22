package x0;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import b1.o;
import com.bumptech.glide.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import r1.a;
import x0.j;

/* loaded from: classes.dex */
public final class k<DataType, ResourceType, Transcode> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<DataType> f19007a;

    /* renamed from: b, reason: collision with root package name */
    public final List<? extends v0.j<DataType, ResourceType>> f19008b;

    /* renamed from: c, reason: collision with root package name */
    public final j1.e<ResourceType, Transcode> f19009c;

    /* renamed from: d, reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f19010d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19011e;

    public k(Class cls, Class cls2, Class cls3, List list, j1.e eVar, a.c cVar) {
        this.f19007a = cls;
        this.f19008b = list;
        this.f19009c = eVar;
        this.f19010d = cVar;
        this.f19011e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final w a(int r18, int r19, @NonNull v0.h hVar, com.bumptech.glide.load.data.e eVar, j.b bVar) throws r {
        w wVarB;
        v0.l lVar;
        v0.c cVarA;
        boolean z10;
        v0.f fVar;
        Pools.Pool<List<Throwable>> pool = this.f19010d;
        List<Throwable> listAcquire = pool.acquire();
        q1.l.b(listAcquire);
        List<Throwable> list = listAcquire;
        try {
            w<ResourceType> wVarB2 = b(eVar, r18, r19, hVar, list);
            pool.release(list);
            j jVar = j.this;
            jVar.getClass();
            Class<?> cls = wVarB2.get().getClass();
            v0.a aVar = v0.a.RESOURCE_DISK_CACHE;
            v0.a aVar2 = bVar.f18999a;
            i<R> iVar = jVar.f18978a;
            v0.k kVar = null;
            if (aVar2 != aVar) {
                v0.l lVarF = iVar.f(cls);
                wVarB = lVarF.b(jVar.f18984h, wVarB2, jVar.f18988m, jVar.f18989n);
                lVar = lVarF;
            } else {
                wVarB = wVarB2;
                lVar = null;
            }
            if (!wVarB2.equals(wVarB)) {
                wVarB2.recycle();
            }
            if (iVar.f18963c.a().f2732d.a(wVarB.a()) != null) {
                com.bumptech.glide.k kVarA = iVar.f18963c.a();
                kVarA.getClass();
                v0.k kVarA2 = kVarA.f2732d.a(wVarB.a());
                if (kVarA2 == null) {
                    throw new k.d(wVarB.a());
                }
                cVarA = kVarA2.a(jVar.f18991q);
                kVar = kVarA2;
            } else {
                cVarA = v0.c.NONE;
            }
            v0.f fVar2 = jVar.A;
            ArrayList arrayListB = iVar.b();
            int size = arrayListB.size();
            int r11 = 0;
            while (true) {
                if (r11 >= size) {
                    z10 = false;
                    break;
                }
                if (((o.a) arrayListB.get(r11)).f1049a.equals(fVar2)) {
                    z10 = true;
                    break;
                }
                r11++;
            }
            if (jVar.f18990p.d(!z10, aVar2, cVarA)) {
                if (kVar == null) {
                    throw new k.d(wVarB.get().getClass());
                }
                int r02 = cVarA.ordinal();
                if (r02 == 0) {
                    fVar = new f(jVar.A, jVar.f18985j);
                } else {
                    if (r02 != 1) {
                        throw new IllegalArgumentException("Unknown strategy: " + cVarA);
                    }
                    fVar = new y(iVar.f18963c.f2713a, jVar.A, jVar.f18985j, jVar.f18988m, jVar.f18989n, lVar, cls, jVar.f18991q);
                }
                v<Z> vVar = (v) v.f19092e.acquire();
                q1.l.b(vVar);
                vVar.f19096d = false;
                vVar.f19095c = true;
                vVar.f19094b = wVarB;
                j.c<?> cVar = jVar.f;
                cVar.f19001a = fVar;
                cVar.f19002b = kVar;
                cVar.f19003c = vVar;
                wVarB = vVar;
            }
            return this.f19009c.a(wVarB, hVar);
        } catch (Throwable th2) {
            pool.release(list);
            throw th2;
        }
    }

    @NonNull
    public final w<ResourceType> b(com.bumptech.glide.load.data.e<DataType> eVar, int r11, int r12, @NonNull v0.h hVar, List<Throwable> list) throws r {
        List<? extends v0.j<DataType, ResourceType>> list2 = this.f19008b;
        int size = list2.size();
        w<ResourceType> wVarB = null;
        for (int r32 = 0; r32 < size; r32++) {
            v0.j<DataType, ResourceType> jVar = list2.get(r32);
            try {
                if (jVar.a(eVar.a(), hVar)) {
                    wVarB = jVar.b(eVar.a(), r11, r12, hVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e10) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + jVar, e10);
                }
                list.add(e10);
            }
            if (wVarB != null) {
                break;
            }
        }
        if (wVarB != null) {
            return wVarB;
        }
        throw new r(this.f19011e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f19007a + ", decoders=" + this.f19008b + ", transcoder=" + this.f19009c + '}';
    }
}
