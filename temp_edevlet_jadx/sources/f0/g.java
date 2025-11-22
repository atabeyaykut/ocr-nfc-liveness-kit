package f0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class g implements e, a.InterfaceC0091a, k {

    /* renamed from: a, reason: collision with root package name */
    public final Path f5411a;

    /* renamed from: b, reason: collision with root package name */
    public final e0.a f5412b;

    /* renamed from: c, reason: collision with root package name */
    public final l0.b f5413c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5414d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5415e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final g0.b f5416g;

    /* renamed from: h, reason: collision with root package name */
    public final g0.e f5417h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    public g0.p f5418i;

    /* renamed from: j, reason: collision with root package name */
    public final d0.l f5419j;

    public g(d0.l lVar, l0.b bVar, k0.l lVar2) {
        j0.d dVar;
        Path path = new Path();
        this.f5411a = path;
        this.f5412b = new e0.a(1);
        this.f = new ArrayList();
        this.f5413c = bVar;
        this.f5414d = lVar2.f8668c;
        this.f5415e = lVar2.f;
        this.f5419j = lVar;
        j0.a aVar = lVar2.f8669d;
        if (aVar == null || (dVar = lVar2.f8670e) == null) {
            this.f5416g = null;
            this.f5417h = null;
            return;
        }
        path.setFillType(lVar2.f8667b);
        g0.a<Integer, Integer> aVarC = aVar.c();
        this.f5416g = (g0.b) aVarC;
        aVarC.a(this);
        bVar.e(aVarC);
        g0.a<Integer, Integer> aVarC2 = dVar.c();
        this.f5417h = (g0.e) aVarC2;
        aVarC2.a(this);
        bVar.e(aVarC2);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5419j.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        for (int r32 = 0; r32 < list2.size(); r32++) {
            c cVar = list2.get(r32);
            if (cVar instanceof m) {
                this.f.add((m) cVar);
            }
        }
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2) {
        p0.f.d(eVar, r22, arrayList, eVar2, this);
    }

    @Override // f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        Path path = this.f5411a;
        path.reset();
        int r12 = 0;
        while (true) {
            ArrayList arrayList = this.f;
            if (r12 >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            } else {
                path.addPath(((m) arrayList.get(r12)).getPath(), matrix);
                r12++;
            }
        }
    }

    @Override // i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        g0.a aVar;
        if (obj == d0.q.f4601a) {
            aVar = this.f5416g;
        } else {
            if (obj != d0.q.f4604d) {
                if (obj == d0.q.E) {
                    g0.p pVar = this.f5418i;
                    l0.b bVar = this.f5413c;
                    if (pVar != null) {
                        bVar.m(pVar);
                    }
                    if (cVar == null) {
                        this.f5418i = null;
                        return;
                    }
                    g0.p pVar2 = new g0.p(cVar, null);
                    this.f5418i = pVar2;
                    pVar2.a(this);
                    bVar.e(this.f5418i);
                    return;
                }
                return;
            }
            aVar = this.f5417h;
        }
        aVar.k(cVar);
    }

    @Override // f0.e
    public final void g(Canvas canvas, Matrix matrix, int r72) {
        if (this.f5415e) {
            return;
        }
        g0.b bVar = this.f5416g;
        int r02 = bVar.l(bVar.b(), bVar.d());
        e0.a aVar = this.f5412b;
        aVar.setColor(r02);
        PointF pointF = p0.f.f12212a;
        int r03 = 0;
        aVar.setAlpha(Math.max(0, Math.min(255, (int) ((((r72 / 255.0f) * this.f5417h.f().intValue()) / 100.0f) * 255.0f))));
        g0.p pVar = this.f5418i;
        if (pVar != null) {
            aVar.setColorFilter((ColorFilter) pVar.f());
        }
        Path path = this.f5411a;
        path.reset();
        while (true) {
            ArrayList arrayList = this.f;
            if (r03 >= arrayList.size()) {
                canvas.drawPath(path, aVar);
                d0.c.a();
                return;
            } else {
                path.addPath(((m) arrayList.get(r03)).getPath(), matrix);
                r03++;
            }
        }
    }

    @Override // f0.c
    public final String getName() {
        return this.f5414d;
    }
}
