package f0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class p implements e, m, j, a.InterfaceC0091a, k {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f5474a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Path f5475b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final d0.l f5476c;

    /* renamed from: d, reason: collision with root package name */
    public final l0.b f5477d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5478e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final g0.c f5479g;

    /* renamed from: h, reason: collision with root package name */
    public final g0.c f5480h;

    /* renamed from: i, reason: collision with root package name */
    public final g0.o f5481i;

    /* renamed from: j, reason: collision with root package name */
    public d f5482j;

    public p(d0.l lVar, l0.b bVar, k0.j jVar) {
        this.f5476c = lVar;
        this.f5477d = bVar;
        this.f5478e = jVar.f8658a;
        this.f = jVar.f8662e;
        g0.a<Float, Float> aVarC = jVar.f8659b.c();
        this.f5479g = (g0.c) aVarC;
        bVar.e(aVarC);
        aVarC.a(this);
        g0.a<Float, Float> aVarC2 = jVar.f8660c.c();
        this.f5480h = (g0.c) aVarC2;
        bVar.e(aVarC2);
        aVarC2.a(this);
        j0.l lVar2 = jVar.f8661d;
        lVar2.getClass();
        g0.o oVar = new g0.o(lVar2);
        this.f5481i = oVar;
        oVar.a(bVar);
        oVar.b(this);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5476c.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        this.f5482j.b(list, list2);
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2) {
        p0.f.d(eVar, r22, arrayList, eVar2, this);
    }

    @Override // f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        this.f5482j.d(rectF, matrix, z10);
    }

    @Override // f0.j
    public final void e(ListIterator<c> listIterator) {
        if (this.f5482j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f5482j = new d(this.f5476c, this.f5477d, "Repeater", this.f, arrayList, null);
    }

    @Override // i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        g0.c cVar2;
        if (this.f5481i.c(cVar, obj)) {
            return;
        }
        if (obj == d0.q.f4618s) {
            cVar2 = this.f5479g;
        } else if (obj != d0.q.f4619t) {
            return;
        } else {
            cVar2 = this.f5480h;
        }
        cVar2.k(cVar);
    }

    @Override // f0.e
    public final void g(Canvas canvas, Matrix matrix, int r13) {
        float fFloatValue = this.f5479g.f().floatValue();
        float fFloatValue2 = this.f5480h.f().floatValue();
        g0.o oVar = this.f5481i;
        float fFloatValue3 = oVar.f5779m.f().floatValue() / 100.0f;
        float fFloatValue4 = oVar.f5780n.f().floatValue() / 100.0f;
        int r42 = (int) fFloatValue;
        while (true) {
            r42--;
            if (r42 < 0) {
                return;
            }
            Matrix matrix2 = this.f5474a;
            matrix2.set(matrix);
            float f = r42;
            matrix2.preConcat(oVar.e(f + fFloatValue2));
            PointF pointF = p0.f.f12212a;
            this.f5482j.g(canvas, matrix2, (int) ((((fFloatValue4 - fFloatValue3) * (f / fFloatValue)) + fFloatValue3) * r13));
        }
    }

    @Override // f0.c
    public final String getName() {
        return this.f5478e;
    }

    @Override // f0.m
    public final Path getPath() {
        Path path = this.f5482j.getPath();
        Path path2 = this.f5475b;
        path2.reset();
        float fFloatValue = this.f5479g.f().floatValue();
        float fFloatValue2 = this.f5480h.f().floatValue();
        int r22 = (int) fFloatValue;
        while (true) {
            r22--;
            if (r22 < 0) {
                return path2;
            }
            Matrix matrix = this.f5474a;
            matrix.set(this.f5481i.e(r22 + fFloatValue2));
            path2.addPath(path, matrix);
        }
    }
}
