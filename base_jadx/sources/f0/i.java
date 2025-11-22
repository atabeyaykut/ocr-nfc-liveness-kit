package f0;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;

/* loaded from: classes.dex */
public final class i extends a {

    /* renamed from: o, reason: collision with root package name */
    public final String f5437o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f5438p;

    /* renamed from: q, reason: collision with root package name */
    public final LongSparseArray<LinearGradient> f5439q;

    /* renamed from: r, reason: collision with root package name */
    public final LongSparseArray<RadialGradient> f5440r;

    /* renamed from: s, reason: collision with root package name */
    public final RectF f5441s;

    /* renamed from: t, reason: collision with root package name */
    public final int f5442t;

    /* renamed from: u, reason: collision with root package name */
    public final int f5443u;

    /* renamed from: v, reason: collision with root package name */
    public final g0.d f5444v;
    public final g0.j w;

    /* renamed from: x, reason: collision with root package name */
    public final g0.j f5445x;

    /* renamed from: y, reason: collision with root package name */
    @Nullable
    public g0.p f5446y;

    /* JADX WARN: Illegal instructions before constructor call */
    public i(d0.l lVar, l0.b bVar, k0.e eVar) {
        Paint.Join join;
        Paint.Join join2;
        int r02 = eVar.f8632h;
        if (r02 == 0) {
            throw null;
        }
        int r03 = r02 - 1;
        Paint.Cap cap = r03 != 0 ? r03 != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        int r04 = eVar.f8633i;
        if (r04 == 0) {
            throw null;
        }
        int r05 = r04 - 1;
        if (r05 == 0) {
            join = Paint.Join.MITER;
        } else if (r05 == 1) {
            join = Paint.Join.ROUND;
        } else {
            if (r05 != 2) {
                join2 = null;
                super(lVar, bVar, cap, join2, eVar.f8634j, eVar.f8629d, eVar.f8631g, eVar.f8635k, eVar.f8636l);
                this.f5439q = new LongSparseArray<>();
                this.f5440r = new LongSparseArray<>();
                this.f5441s = new RectF();
                this.f5437o = eVar.f8626a;
                this.f5442t = eVar.f8627b;
                this.f5438p = eVar.f8637m;
                this.f5443u = (int) (lVar.f4552b.b() / 32.0f);
                g0.a<k0.c, k0.c> aVarC = eVar.f8628c.c();
                this.f5444v = (g0.d) aVarC;
                aVarC.a(this);
                bVar.e(aVarC);
                g0.a<PointF, PointF> aVarC2 = eVar.f8630e.c();
                this.w = (g0.j) aVarC2;
                aVarC2.a(this);
                bVar.e(aVarC2);
                g0.a<PointF, PointF> aVarC3 = eVar.f.c();
                this.f5445x = (g0.j) aVarC3;
                aVarC3.a(this);
                bVar.e(aVarC3);
            }
            join = Paint.Join.BEVEL;
        }
        join2 = join;
        super(lVar, bVar, cap, join2, eVar.f8634j, eVar.f8629d, eVar.f8631g, eVar.f8635k, eVar.f8636l);
        this.f5439q = new LongSparseArray<>();
        this.f5440r = new LongSparseArray<>();
        this.f5441s = new RectF();
        this.f5437o = eVar.f8626a;
        this.f5442t = eVar.f8627b;
        this.f5438p = eVar.f8637m;
        this.f5443u = (int) (lVar.f4552b.b() / 32.0f);
        g0.a<k0.c, k0.c> aVarC4 = eVar.f8628c.c();
        this.f5444v = (g0.d) aVarC4;
        aVarC4.a(this);
        bVar.e(aVarC4);
        g0.a<PointF, PointF> aVarC22 = eVar.f8630e.c();
        this.w = (g0.j) aVarC22;
        aVarC22.a(this);
        bVar.e(aVarC22);
        g0.a<PointF, PointF> aVarC32 = eVar.f.c();
        this.f5445x = (g0.j) aVarC32;
        aVarC32.a(this);
        bVar.e(aVarC32);
    }

    public final int[] e(int[] r52) {
        g0.p pVar = this.f5446y;
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

    @Override // f0.a, i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        super.f(cVar, obj);
        if (obj == d0.q.F) {
            g0.p pVar = this.f5446y;
            l0.b bVar = this.f;
            if (pVar != null) {
                bVar.m(pVar);
            }
            if (cVar == null) {
                this.f5446y = null;
                return;
            }
            g0.p pVar2 = new g0.p(cVar, null);
            this.f5446y = pVar2;
            pVar2.a(this);
            bVar.e(this.f5446y);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f0.a, f0.e
    public final void g(Canvas canvas, Matrix matrix, int r20) {
        Shader radialGradient;
        Matrix matrix2;
        if (this.f5438p) {
            return;
        }
        d(this.f5441s, matrix, false);
        int r22 = this.f5442t;
        g0.d dVar = this.f5444v;
        g0.j jVar = this.f5445x;
        g0.j jVar2 = this.w;
        if (r22 != 1) {
            int r23 = h();
            LongSparseArray<RadialGradient> longSparseArray = this.f5440r;
            long j10 = r23;
            radialGradient = (RadialGradient) longSparseArray.get(j10);
            if (radialGradient == null) {
                PointF pointFF = jVar2.f();
                PointF pointFF2 = jVar.f();
                k0.c cVarF = dVar.f();
                int[] r13 = e(cVarF.f8618b);
                float[] fArr = cVarF.f8617a;
                radialGradient = new RadialGradient(pointFF.x, pointFF.y, (float) Math.hypot(pointFF2.x - r10, pointFF2.y - r11), r13, fArr, Shader.TileMode.CLAMP);
                longSparseArray.put(j10, radialGradient);
                matrix2 = matrix;
            }
            radialGradient.setLocalMatrix(matrix2);
            this.f5385i.setShader(radialGradient);
            super.g(canvas, matrix, r20);
        }
        int r24 = h();
        LongSparseArray<LinearGradient> longSparseArray2 = this.f5439q;
        long j11 = r24;
        radialGradient = (LinearGradient) longSparseArray2.get(j11);
        if (radialGradient == null) {
            PointF pointFF3 = jVar2.f();
            PointF pointFF4 = jVar.f();
            k0.c cVarF2 = dVar.f();
            radialGradient = new LinearGradient(pointFF3.x, pointFF3.y, pointFF4.x, pointFF4.y, e(cVarF2.f8618b), cVarF2.f8617a, Shader.TileMode.CLAMP);
            longSparseArray2.put(j11, radialGradient);
        }
        matrix2 = matrix;
        radialGradient.setLocalMatrix(matrix2);
        this.f5385i.setShader(radialGradient);
        super.g(canvas, matrix, r20);
    }

    @Override // f0.c
    public final String getName() {
        return this.f5437o;
    }

    public final int h() {
        float f = this.w.f5738d;
        float f10 = this.f5443u;
        int r02 = Math.round(f * f10);
        int r22 = Math.round(this.f5445x.f5738d * f10);
        int r12 = Math.round(this.f5444v.f5738d * f10);
        int r03 = r02 != 0 ? r02 * 527 : 17;
        if (r22 != 0) {
            r03 = r03 * 31 * r22;
        }
        return r12 != 0 ? r03 * 31 * r12 : r03;
    }
}
