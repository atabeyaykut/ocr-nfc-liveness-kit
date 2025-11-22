package f0;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class o implements a.InterfaceC0091a, k, m {

    /* renamed from: c, reason: collision with root package name */
    public final String f5467c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5468d;

    /* renamed from: e, reason: collision with root package name */
    public final d0.l f5469e;
    public final g0.a<?, PointF> f;

    /* renamed from: g, reason: collision with root package name */
    public final g0.a<?, PointF> f5470g;

    /* renamed from: h, reason: collision with root package name */
    public final g0.c f5471h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5473j;

    /* renamed from: a, reason: collision with root package name */
    public final Path f5465a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final RectF f5466b = new RectF();

    /* renamed from: i, reason: collision with root package name */
    public final b f5472i = new b();

    public o(d0.l lVar, l0.b bVar, k0.i iVar) {
        this.f5467c = iVar.f8653a;
        this.f5468d = iVar.f8657e;
        this.f5469e = lVar;
        g0.a<PointF, PointF> aVarC = iVar.f8654b.c();
        this.f = aVarC;
        g0.a<PointF, PointF> aVarC2 = iVar.f8655c.c();
        this.f5470g = aVarC2;
        g0.a<?, ?> aVarC3 = iVar.f8656d.c();
        this.f5471h = (g0.c) aVarC3;
        bVar.e(aVarC);
        bVar.e(aVarC2);
        bVar.e(aVarC3);
        aVarC.a(this);
        aVarC2.a(this);
        aVarC3.a(this);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5473j = false;
        this.f5469e.invalidateSelf();
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
                    ((List) this.f5472i.f5393a).add(sVar);
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
        if (obj == d0.q.f4609j) {
            aVar = this.f5470g;
        } else if (obj == d0.q.f4611l) {
            aVar = this.f;
        } else if (obj != d0.q.f4610k) {
            return;
        } else {
            aVar = this.f5471h;
        }
        aVar.k(cVar);
    }

    @Override // f0.c
    public final String getName() {
        return this.f5467c;
    }

    @Override // f0.m
    public final Path getPath() {
        boolean z10 = this.f5473j;
        Path path = this.f5465a;
        if (z10) {
            return path;
        }
        path.reset();
        if (this.f5468d) {
            this.f5473j = true;
            return path;
        }
        PointF pointFF = this.f5470g.f();
        float f = pointFF.x / 2.0f;
        float f10 = pointFF.y / 2.0f;
        g0.c cVar = this.f5471h;
        float fL = cVar == null ? 0.0f : cVar.l();
        float fMin = Math.min(f, f10);
        if (fL > fMin) {
            fL = fMin;
        }
        PointF pointFF2 = this.f.f();
        path.moveTo(pointFF2.x + f, (pointFF2.y - f10) + fL);
        path.lineTo(pointFF2.x + f, (pointFF2.y + f10) - fL);
        RectF rectF = this.f5466b;
        if (fL > 0.0f) {
            float f11 = pointFF2.x + f;
            float f12 = fL * 2.0f;
            float f13 = pointFF2.y + f10;
            rectF.set(f11 - f12, f13 - f12, f11, f13);
            path.arcTo(rectF, 0.0f, 90.0f, false);
        }
        path.lineTo((pointFF2.x - f) + fL, pointFF2.y + f10);
        if (fL > 0.0f) {
            float f14 = pointFF2.x - f;
            float f15 = pointFF2.y + f10;
            float f16 = fL * 2.0f;
            rectF.set(f14, f15 - f16, f16 + f14, f15);
            path.arcTo(rectF, 90.0f, 90.0f, false);
        }
        path.lineTo(pointFF2.x - f, (pointFF2.y - f10) + fL);
        if (fL > 0.0f) {
            float f17 = pointFF2.x - f;
            float f18 = pointFF2.y - f10;
            float f19 = fL * 2.0f;
            rectF.set(f17, f18, f17 + f19, f19 + f18);
            path.arcTo(rectF, 180.0f, 90.0f, false);
        }
        path.lineTo((pointFF2.x + f) - fL, pointFF2.y - f10);
        if (fL > 0.0f) {
            float f20 = pointFF2.x + f;
            float f21 = fL * 2.0f;
            float f22 = pointFF2.y - f10;
            rectF.set(f20 - f21, f22, f20, f21 + f22);
            path.arcTo(rectF, 270.0f, 90.0f, false);
        }
        path.close();
        this.f5472i.a(path);
        this.f5473j = true;
        return path;
    }
}
