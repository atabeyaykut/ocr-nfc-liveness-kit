package f0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class r extends a {

    /* renamed from: o, reason: collision with root package name */
    public final l0.b f5488o;

    /* renamed from: p, reason: collision with root package name */
    public final String f5489p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f5490q;

    /* renamed from: r, reason: collision with root package name */
    public final g0.b f5491r;

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public g0.p f5492s;

    /* JADX WARN: Illegal instructions before constructor call */
    public r(d0.l lVar, l0.b bVar, k0.o oVar) {
        Paint.Join join;
        Paint.Join join2;
        int r02 = oVar.f8683g;
        if (r02 == 0) {
            throw null;
        }
        int r03 = r02 - 1;
        Paint.Cap cap = r03 != 0 ? r03 != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        int r04 = oVar.f8684h;
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
                super(lVar, bVar, cap, join2, oVar.f8685i, oVar.f8682e, oVar.f, oVar.f8680c, oVar.f8679b);
                this.f5488o = bVar;
                this.f5489p = oVar.f8678a;
                this.f5490q = oVar.f8686j;
                g0.a<Integer, Integer> aVarC = oVar.f8681d.c();
                this.f5491r = (g0.b) aVarC;
                aVarC.a(this);
                bVar.e(aVarC);
            }
            join = Paint.Join.BEVEL;
        }
        join2 = join;
        super(lVar, bVar, cap, join2, oVar.f8685i, oVar.f8682e, oVar.f, oVar.f8680c, oVar.f8679b);
        this.f5488o = bVar;
        this.f5489p = oVar.f8678a;
        this.f5490q = oVar.f8686j;
        g0.a<Integer, Integer> aVarC2 = oVar.f8681d.c();
        this.f5491r = (g0.b) aVarC2;
        aVarC2.a(this);
        bVar.e(aVarC2);
    }

    @Override // f0.a, i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        super.f(cVar, obj);
        Integer num = d0.q.f4602b;
        g0.b bVar = this.f5491r;
        if (obj == num) {
            bVar.k(cVar);
            return;
        }
        if (obj == d0.q.E) {
            g0.p pVar = this.f5492s;
            l0.b bVar2 = this.f5488o;
            if (pVar != null) {
                bVar2.m(pVar);
            }
            if (cVar == null) {
                this.f5492s = null;
                return;
            }
            g0.p pVar2 = new g0.p(cVar, null);
            this.f5492s = pVar2;
            pVar2.a(this);
            bVar2.e(bVar);
        }
    }

    @Override // f0.a, f0.e
    public final void g(Canvas canvas, Matrix matrix, int r6) {
        if (this.f5490q) {
            return;
        }
        g0.b bVar = this.f5491r;
        int r02 = bVar.l(bVar.b(), bVar.d());
        e0.a aVar = this.f5385i;
        aVar.setColor(r02);
        g0.p pVar = this.f5492s;
        if (pVar != null) {
            aVar.setColorFilter((ColorFilter) pVar.f());
        }
        super.g(canvas, matrix, r6);
    }

    @Override // f0.c
    public final String getName() {
        return this.f5489p;
    }
}
