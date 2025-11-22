package f0;

import android.graphics.Path;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class q implements m, a.InterfaceC0091a {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5484b;

    /* renamed from: c, reason: collision with root package name */
    public final d0.l f5485c;

    /* renamed from: d, reason: collision with root package name */
    public final g0.l f5486d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5487e;

    /* renamed from: a, reason: collision with root package name */
    public final Path f5483a = new Path();
    public final b f = new b();

    public q(d0.l lVar, l0.b bVar, k0.n nVar) {
        nVar.getClass();
        this.f5484b = nVar.f8677d;
        this.f5485c = lVar;
        g0.a<k0.k, Path> aVarC = nVar.f8676c.c();
        this.f5486d = (g0.l) aVarC;
        bVar.e(aVarC);
        aVarC.a(this);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5487e = false;
        this.f5485c.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        int r52 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (r52 >= arrayList.size()) {
                return;
            }
            c cVar = (c) arrayList.get(r52);
            if (cVar instanceof s) {
                s sVar = (s) cVar;
                if (sVar.f5495c == 1) {
                    ((List) this.f.f5393a).add(sVar);
                    sVar.c(this);
                }
            }
            r52++;
        }
    }

    @Override // f0.m
    public final Path getPath() {
        boolean z10 = this.f5487e;
        Path path = this.f5483a;
        if (z10) {
            return path;
        }
        path.reset();
        if (this.f5484b) {
            this.f5487e = true;
            return path;
        }
        path.set(this.f5486d.f());
        path.setFillType(Path.FillType.EVEN_ODD);
        this.f.a(path);
        this.f5487e = true;
        return path;
    }
}
