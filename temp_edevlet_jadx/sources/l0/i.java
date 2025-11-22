package l0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import d0.l;
import d0.q;
import g0.n;
import g0.p;
import j0.k;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class i extends l0.b {
    public final Matrix A;
    public final a B;
    public final b C;
    public final HashMap D;
    public final LongSparseArray<String> E;
    public final n F;
    public final l G;
    public final d0.f H;

    @Nullable
    public final g0.b I;

    @Nullable
    public p J;

    @Nullable
    public final g0.b K;

    @Nullable
    public p L;

    @Nullable
    public final g0.c M;

    @Nullable
    public p N;

    @Nullable
    public final g0.c O;

    @Nullable
    public p P;

    @Nullable
    public p Q;

    @Nullable
    public p R;

    /* renamed from: y, reason: collision with root package name */
    public final StringBuilder f9318y;

    /* renamed from: z, reason: collision with root package name */
    public final RectF f9319z;

    public class a extends Paint {
        public a() {
            super(1);
            setStyle(Paint.Style.FILL);
        }
    }

    public class b extends Paint {
        public b() {
            super(1);
            setStyle(Paint.Style.STROKE);
        }
    }

    public i(l lVar, e eVar) {
        j0.b bVar;
        j0.b bVar2;
        j0.a aVar;
        j0.a aVar2;
        super(lVar, eVar);
        this.f9318y = new StringBuilder(2);
        this.f9319z = new RectF();
        this.A = new Matrix();
        this.B = new a();
        this.C = new b();
        this.D = new HashMap();
        this.E = new LongSparseArray<>();
        this.G = lVar;
        this.H = eVar.f9295b;
        n nVar = new n((List) eVar.f9309q.f7966b);
        this.F = nVar;
        nVar.a(this);
        e(nVar);
        k kVar = eVar.f9310r;
        if (kVar != null && (aVar2 = kVar.f7953a) != null) {
            g0.a<?, ?> aVarC = aVar2.c();
            this.I = (g0.b) aVarC;
            aVarC.a(this);
            e(aVarC);
        }
        if (kVar != null && (aVar = kVar.f7954b) != null) {
            g0.a<?, ?> aVarC2 = aVar.c();
            this.K = (g0.b) aVarC2;
            aVarC2.a(this);
            e(aVarC2);
        }
        if (kVar != null && (bVar2 = kVar.f7955c) != null) {
            g0.a<?, ?> aVarC3 = bVar2.c();
            this.M = (g0.c) aVarC3;
            aVarC3.a(this);
            e(aVarC3);
        }
        if (kVar == null || (bVar = kVar.f7956d) == null) {
            return;
        }
        g0.a<?, ?> aVarC4 = bVar.c();
        this.O = (g0.c) aVarC4;
        aVarC4.a(this);
        e(aVarC4);
    }

    public static void q(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    public static void r(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    @Override // l0.b, f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        d0.f fVar = this.H;
        rectF.set(0.0f, 0.0f, fVar.f4528j.width(), fVar.f4528j.height());
    }

    @Override // l0.b, i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        p pVar;
        super.f(cVar, obj);
        if (obj == q.f4601a) {
            p pVar2 = this.J;
            if (pVar2 != null) {
                m(pVar2);
            }
            if (cVar == null) {
                this.J = null;
                return;
            }
            p pVar3 = new p(cVar, null);
            this.J = pVar3;
            pVar3.a(this);
            pVar = this.J;
        } else if (obj == q.f4602b) {
            p pVar4 = this.L;
            if (pVar4 != null) {
                m(pVar4);
            }
            if (cVar == null) {
                this.L = null;
                return;
            }
            p pVar5 = new p(cVar, null);
            this.L = pVar5;
            pVar5.a(this);
            pVar = this.L;
        } else if (obj == q.f4616q) {
            p pVar6 = this.N;
            if (pVar6 != null) {
                m(pVar6);
            }
            if (cVar == null) {
                this.N = null;
                return;
            }
            p pVar7 = new p(cVar, null);
            this.N = pVar7;
            pVar7.a(this);
            pVar = this.N;
        } else if (obj == q.f4617r) {
            p pVar8 = this.P;
            if (pVar8 != null) {
                m(pVar8);
            }
            if (cVar == null) {
                this.P = null;
                return;
            }
            p pVar9 = new p(cVar, null);
            this.P = pVar9;
            pVar9.a(this);
            pVar = this.P;
        } else if (obj == q.D) {
            p pVar10 = this.Q;
            if (pVar10 != null) {
                m(pVar10);
            }
            if (cVar == null) {
                this.Q = null;
                return;
            }
            p pVar11 = new p(cVar, null);
            this.Q = pVar11;
            pVar11.a(this);
            pVar = this.Q;
        } else {
            if (obj != q.G) {
                return;
            }
            p pVar12 = this.R;
            if (pVar12 != null) {
                m(pVar12);
            }
            if (cVar == null) {
                this.R = null;
                return;
            }
            p pVar13 = new p(cVar, null);
            this.R = pVar13;
            pVar13.a(this);
            pVar = this.R;
        }
        e(pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01a3  */
    /* JADX WARN: Type inference failed for: r10v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.lang.Object, java.lang.String] */
    @Override // l0.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(android.graphics.Canvas r33, android.graphics.Matrix r34, int r35) {
        /*
            Method dump skipped, instructions count: 1277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.i.j(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }
}
