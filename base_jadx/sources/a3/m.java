package a3;

import android.content.Context;
import c3.b;
import c5.w;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import u2.h;
import u2.s;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f84a;

    /* renamed from: b, reason: collision with root package name */
    public final v2.e f85b;

    /* renamed from: c, reason: collision with root package name */
    public final b3.d f86c;

    /* renamed from: d, reason: collision with root package name */
    public final p f87d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f88e;
    public final c3.b f;

    /* renamed from: g, reason: collision with root package name */
    public final d3.a f89g;

    /* renamed from: h, reason: collision with root package name */
    public final d3.a f90h;

    /* renamed from: i, reason: collision with root package name */
    public final b3.c f91i;

    public m(Context context, v2.e eVar, b3.d dVar, p pVar, Executor executor, c3.b bVar, d3.a aVar, d3.a aVar2, b3.c cVar) {
        this.f84a = context;
        this.f85b = eVar;
        this.f86c = dVar;
        this.f87d = pVar;
        this.f88e = executor;
        this.f = bVar;
        this.f89g = aVar;
        this.f90h = aVar2;
        this.f91i = cVar;
    }

    public final void a(final s sVar, int r18) {
        v2.b bVarA;
        v2.m mVar = this.f85b.get(sVar.b());
        final long jMax = 0;
        while (true) {
            h hVar = new h(this, sVar);
            c3.b bVar = this.f;
            if (!((Boolean) bVar.a(hVar)).booleanValue()) {
                bVar.a(new b.a() { // from class: a3.l
                    @Override // c3.b.a
                    public final Object execute() {
                        m mVar2 = this.f81a;
                        mVar2.f86c.f0(mVar2.f89g.a() + jMax, sVar);
                        return null;
                    }
                });
                return;
            }
            final Iterable iterable = (Iterable) bVar.a(new androidx.camera.lifecycle.d(this, sVar));
            if (!iterable.iterator().hasNext()) {
                return;
            }
            int r12 = 2;
            if (mVar == null) {
                w.l(sVar, "Uploader", "Unknown backend for %s, deleting event batch for it...");
                bVarA = new v2.b(3, -1L);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((b3.j) it.next()).a());
                }
                if (sVar.c() != null) {
                    b3.c cVar = this.f91i;
                    Objects.requireNonNull(cVar);
                    y2.a aVar = (y2.a) bVar.a(new androidx.camera.camera2.interop.d(r12, cVar));
                    h.a aVar2 = new h.a();
                    aVar2.f = new HashMap();
                    aVar2.f17829d = Long.valueOf(this.f89g.a());
                    aVar2.f17830e = Long.valueOf(this.f90h.a());
                    aVar2.d("GDT_CLIENT_METRICS");
                    r2.b bVar2 = new r2.b("proto");
                    aVar.getClass();
                    w6.h hVar2 = u2.p.f17850a;
                    hVar2.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        hVar2.a(byteArrayOutputStream, aVar);
                    } catch (IOException unused) {
                    }
                    aVar2.c(new u2.m(bVar2, byteArrayOutputStream.toByteArray()));
                    arrayList.add(mVar.b(aVar2.b()));
                }
                bVarA = mVar.a(new v2.a(arrayList, sVar.c()));
            }
            if (bVarA.f18214a == 2) {
                bVar.a(new b.a() { // from class: a3.i
                    @Override // c3.b.a
                    public final Object execute() {
                        m mVar2 = this.f73a;
                        b3.d dVar = mVar2.f86c;
                        dVar.k0(iterable);
                        dVar.f0(mVar2.f89g.a() + jMax, sVar);
                        return null;
                    }
                });
                this.f87d.a(sVar, r18 + 1, true);
                return;
            }
            bVar.a(new j(this, iterable));
            int r13 = bVarA.f18214a;
            if (r13 == 1) {
                jMax = Math.max(jMax, bVarA.f18215b);
            } else if (r13 == 4) {
                HashMap map = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String strG = ((b3.j) it2.next()).a().g();
                    map.put(strG, !map.containsKey(strG) ? 1 : Integer.valueOf(((Integer) map.get(strG)).intValue() + 1));
                }
                bVar.a(new k(this, map));
            }
        }
    }
}
