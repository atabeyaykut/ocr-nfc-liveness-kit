package f0;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class f implements m, a.InterfaceC0091a, k {

    /* renamed from: b, reason: collision with root package name */
    public final String f5405b;

    /* renamed from: c, reason: collision with root package name */
    public final d0.l f5406c;

    /* renamed from: d, reason: collision with root package name */
    public final g0.j f5407d;

    /* renamed from: e, reason: collision with root package name */
    public final g0.a<?, PointF> f5408e;
    public final k0.a f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5410h;

    /* renamed from: a, reason: collision with root package name */
    public final Path f5404a = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final b f5409g = new b();

    public f(d0.l lVar, l0.b bVar, k0.a aVar) {
        this.f5405b = aVar.f8612a;
        this.f5406c = lVar;
        g0.a<?, ?> aVarC = aVar.f8614c.c();
        this.f5407d = (g0.j) aVarC;
        g0.a<PointF, PointF> aVarC2 = aVar.f8613b.c();
        this.f5408e = aVarC2;
        this.f = aVar;
        bVar.e(aVarC);
        bVar.e(aVarC2);
        aVarC.a(this);
        aVarC2.a(this);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5410h = false;
        this.f5406c.invalidateSelf();
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
                    ((List) this.f5409g.f5393a).add(sVar);
                    sVar.c(this);
                }
            }
            r52++;
        }
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2) {
        p0.f.d(eVar, r22, arrayList, eVar2, this);
    }

    @Override // i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        g0.a aVar;
        if (obj == d0.q.f4608i) {
            aVar = this.f5407d;
        } else if (obj != d0.q.f4611l) {
            return;
        } else {
            aVar = this.f5408e;
        }
        aVar.k(cVar);
    }

    @Override // f0.c
    public final String getName() {
        return this.f5405b;
    }

    @Override // f0.m
    public final Path getPath() {
        float f;
        float f10;
        float f11;
        float f12;
        boolean z10 = this.f5410h;
        Path path = this.f5404a;
        if (z10) {
            return path;
        }
        path.reset();
        k0.a aVar = this.f;
        if (aVar.f8616e) {
            this.f5410h = true;
            return path;
        }
        PointF pointFF = this.f5407d.f();
        float f13 = pointFF.x / 2.0f;
        float f14 = pointFF.y / 2.0f;
        float f15 = f13 * 0.55228f;
        float f16 = f14 * 0.55228f;
        path.reset();
        if (aVar.f8615d) {
            f = -f14;
            path.moveTo(0.0f, f);
            float f17 = 0.0f - f15;
            float f18 = -f13;
            f10 = 0.0f - f16;
            path.cubicTo(f17, f, f18, f10, f18, 0.0f);
            f11 = f16 + 0.0f;
            path.cubicTo(f18, f11, f17, f14, 0.0f, f14);
            f12 = f15 + 0.0f;
        } else {
            f = -f14;
            path.moveTo(0.0f, f);
            float f19 = f15 + 0.0f;
            f10 = 0.0f - f16;
            path.cubicTo(f19, f, f13, f10, f13, 0.0f);
            f11 = f16 + 0.0f;
            path.cubicTo(f13, f11, f19, f14, 0.0f, f14);
            f12 = 0.0f - f15;
            f13 = -f13;
        }
        path.cubicTo(f12, f14, f13, f11, f13, 0.0f);
        path.cubicTo(f13, f10, f12, f, 0.0f, f);
        PointF pointFF2 = this.f5408e.f();
        path.offset(pointFF2.x, pointFF2.y);
        path.close();
        this.f5409g.a(path);
        this.f5410h = true;
        return path;
    }
}
