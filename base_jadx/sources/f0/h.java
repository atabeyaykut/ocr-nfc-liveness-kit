package f0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class h implements e, a.InterfaceC0091a, k {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final String f5420a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5421b;

    /* renamed from: c, reason: collision with root package name */
    public final l0.b f5422c;

    /* renamed from: d, reason: collision with root package name */
    public final LongSparseArray<LinearGradient> f5423d = new LongSparseArray<>();

    /* renamed from: e, reason: collision with root package name */
    public final LongSparseArray<RadialGradient> f5424e = new LongSparseArray<>();
    public final Path f;

    /* renamed from: g, reason: collision with root package name */
    public final e0.a f5425g;

    /* renamed from: h, reason: collision with root package name */
    public final RectF f5426h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f5427i;

    /* renamed from: j, reason: collision with root package name */
    public final int f5428j;

    /* renamed from: k, reason: collision with root package name */
    public final g0.d f5429k;

    /* renamed from: l, reason: collision with root package name */
    public final g0.e f5430l;

    /* renamed from: m, reason: collision with root package name */
    public final g0.j f5431m;

    /* renamed from: n, reason: collision with root package name */
    public final g0.j f5432n;

    /* renamed from: o, reason: collision with root package name */
    @Nullable
    public g0.p f5433o;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public g0.p f5434p;

    /* renamed from: q, reason: collision with root package name */
    public final d0.l f5435q;

    /* renamed from: r, reason: collision with root package name */
    public final int f5436r;

    public h(d0.l lVar, l0.b bVar, k0.d dVar) {
        Path path = new Path();
        this.f = path;
        this.f5425g = new e0.a(1);
        this.f5426h = new RectF();
        this.f5427i = new ArrayList();
        this.f5422c = bVar;
        this.f5420a = dVar.f8624g;
        this.f5421b = dVar.f8625h;
        this.f5435q = lVar;
        this.f5428j = dVar.f8619a;
        path.setFillType(dVar.f8620b);
        this.f5436r = (int) (lVar.f4552b.b() / 32.0f);
        g0.a<k0.c, k0.c> aVarC = dVar.f8621c.c();
        this.f5429k = (g0.d) aVarC;
        aVarC.a(this);
        bVar.e(aVarC);
        g0.a<Integer, Integer> aVarC2 = dVar.f8622d.c();
        this.f5430l = (g0.e) aVarC2;
        aVarC2.a(this);
        bVar.e(aVarC2);
        g0.a<PointF, PointF> aVarC3 = dVar.f8623e.c();
        this.f5431m = (g0.j) aVarC3;
        aVarC3.a(this);
        bVar.e(aVarC3);
        g0.a<PointF, PointF> aVarC4 = dVar.f.c();
        this.f5432n = (g0.j) aVarC4;
        aVarC4.a(this);
        bVar.e(aVarC4);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5435q.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        for (int r32 = 0; r32 < list2.size(); r32++) {
            c cVar = list2.get(r32);
            if (cVar instanceof m) {
                this.f5427i.add((m) cVar);
            }
        }
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2) {
        p0.f.d(eVar, r22, arrayList, eVar2, this);
    }

    @Override // f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        Path path = this.f;
        path.reset();
        int r12 = 0;
        while (true) {
            ArrayList arrayList = this.f5427i;
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

    public final int[] e(int[] r52) {
        g0.p pVar = this.f5434p;
        if (pVar != null) {
            Integer[] numArr = (Integer[]) pVar.f();
            int r32 = 0;
            if (r52.length == numArr.length) {
                while (r32 < r52.length) {
                    r52[r32] = numArr[r32].intValue();
                    r32++;
                }
            } else {
                r52 = new int[numArr.length];
                while (r32 < numArr.length) {
                    r52[r32] = numArr[r32].intValue();
                    r32++;
                }
            }
        }
        return r52;
    }

    @Override // i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        g0.p pVar;
        if (obj == d0.q.f4604d) {
            this.f5430l.k(cVar);
            return;
        }
        ColorFilter colorFilter = d0.q.E;
        l0.b bVar = this.f5422c;
        if (obj == colorFilter) {
            g0.p pVar2 = this.f5433o;
            if (pVar2 != null) {
                bVar.m(pVar2);
            }
            if (cVar == null) {
                this.f5433o = null;
                return;
            }
            g0.p pVar3 = new g0.p(cVar, null);
            this.f5433o = pVar3;
            pVar3.a(this);
            pVar = this.f5433o;
        } else {
            if (obj != d0.q.F) {
                return;
            }
            g0.p pVar4 = this.f5434p;
            if (pVar4 != null) {
                bVar.m(pVar4);
            }
            if (cVar == null) {
                this.f5434p = null;
                return;
            }
            this.f5423d.clear();
            this.f5424e.clear();
            g0.p pVar5 = new g0.p(cVar, null);
            this.f5434p = pVar5;
            pVar5.a(this);
            pVar = this.f5434p;
        }
        bVar.e(pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f0.e
    public final void g(Canvas canvas, Matrix matrix, int r23) {
        LinearGradient radialGradient;
        if (this.f5421b) {
            return;
        }
        Path path = this.f;
        path.reset();
        int r42 = 0;
        while (true) {
            ArrayList arrayList = this.f5427i;
            if (r42 >= arrayList.size()) {
                break;
            }
            path.addPath(((m) arrayList.get(r42)).getPath(), matrix);
            r42++;
        }
        path.computeBounds(this.f5426h, false);
        int r43 = this.f5428j;
        g0.d dVar = this.f5429k;
        g0.j jVar = this.f5432n;
        g0.j jVar2 = this.f5431m;
        if (r43 == 1) {
            int r44 = h();
            LongSparseArray<LinearGradient> longSparseArray = this.f5423d;
            long j10 = r44;
            radialGradient = longSparseArray.get(j10);
            if (radialGradient == null) {
                PointF pointFF = jVar2.f();
                PointF pointFF2 = jVar.f();
                k0.c cVarF = dVar.f();
                LinearGradient linearGradient = new LinearGradient(pointFF.x, pointFF.y, pointFF2.x, pointFF2.y, e(cVarF.f8618b), cVarF.f8617a, Shader.TileMode.CLAMP);
                longSparseArray.put(j10, linearGradient);
                radialGradient = linearGradient;
            }
        } else {
            int r45 = h();
            LongSparseArray<RadialGradient> longSparseArray2 = this.f5424e;
            long j11 = r45;
            radialGradient = (RadialGradient) longSparseArray2.get(j11);
            if (radialGradient == null) {
                PointF pointFF3 = jVar2.f();
                PointF pointFF4 = jVar.f();
                k0.c cVarF2 = dVar.f();
                int[] r15 = e(cVarF2.f8618b);
                float[] fArr = cVarF2.f8617a;
                float f = pointFF3.x;
                float f10 = pointFF3.y;
                float fHypot = (float) Math.hypot(pointFF4.x - f, pointFF4.y - f10);
                radialGradient = new RadialGradient(f, f10, fHypot <= 0.0f ? 0.001f : fHypot, r15, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(j11, radialGradient);
            }
        }
        radialGradient.setLocalMatrix(matrix);
        e0.a aVar = this.f5425g;
        aVar.setShader(radialGradient);
        g0.p pVar = this.f5433o;
        if (pVar != null) {
            aVar.setColorFilter((ColorFilter) pVar.f());
        }
        PointF pointF = p0.f.f12212a;
        aVar.setAlpha(Math.max(0, Math.min(255, (int) ((((r23 / 255.0f) * this.f5430l.f().intValue()) / 100.0f) * 255.0f))));
        canvas.drawPath(path, aVar);
        d0.c.a();
    }

    @Override // f0.c
    public final String getName() {
        return this.f5420a;
    }

    public final int h() {
        float f = this.f5431m.f5738d;
        float f10 = this.f5436r;
        int r02 = Math.round(f * f10);
        int r22 = Math.round(this.f5432n.f5738d * f10);
        int r12 = Math.round(this.f5429k.f5738d * f10);
        int r03 = r02 != 0 ? r02 * 527 : 17;
        if (r22 != 0) {
            r03 = r03 * 31 * r22;
        }
        return r12 != 0 ? r03 * 31 * r12 : r03;
    }
}
