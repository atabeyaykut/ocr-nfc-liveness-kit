package l0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import d0.l;
import d0.q;
import g0.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class c extends b {
    public final RectF A;
    public final RectF B;
    public final Paint C;

    /* renamed from: y, reason: collision with root package name */
    @Nullable
    public g0.a<Float, Float> f9290y;

    /* renamed from: z, reason: collision with root package name */
    public final ArrayList f9291z;

    public c(l lVar, e eVar, List<e> list, d0.f fVar) {
        int r42;
        b bVar;
        b cVar;
        super(lVar, eVar);
        this.f9291z = new ArrayList();
        this.A = new RectF();
        this.B = new RectF();
        this.C = new Paint();
        j0.b bVar2 = eVar.f9311s;
        if (bVar2 != null) {
            g0.a<Float, Float> aVarC = bVar2.c();
            this.f9290y = aVarC;
            e(aVarC);
            this.f9290y.a(this);
        } else {
            this.f9290y = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(fVar.f4527i.size());
        int size = list.size() - 1;
        b bVar3 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            e eVar2 = list.get(size);
            int r6 = g.d.c(eVar2.f9298e);
            if (r6 == 0) {
                cVar = new c(lVar, eVar2, fVar.f4522c.get(eVar2.f9299g), fVar);
            } else if (r6 == 1) {
                cVar = new h(lVar, eVar2);
            } else if (r6 == 2) {
                cVar = new d(lVar, eVar2);
            } else if (r6 == 3) {
                cVar = new f(lVar, eVar2);
            } else if (r6 == 4) {
                cVar = new g(lVar, eVar2);
            } else if (r6 != 5) {
                p0.c.b("Unknown layer type ".concat(androidx.browser.browseractions.b.o(eVar2.f9298e)));
                cVar = null;
            } else {
                cVar = new i(lVar, eVar2);
            }
            if (cVar != null) {
                longSparseArray.put(cVar.f9280n.f9297d, cVar);
                if (bVar3 != null) {
                    bVar3.f9283q = cVar;
                    bVar3 = null;
                } else {
                    this.f9291z.add(0, cVar);
                    int r43 = g.d.c(eVar2.f9313u);
                    if (r43 == 1 || r43 == 2) {
                        bVar3 = cVar;
                    }
                }
            }
            size--;
        }
        for (r42 = 0; r42 < longSparseArray.size(); r42++) {
            b bVar4 = (b) longSparseArray.get(longSparseArray.keyAt(r42));
            if (bVar4 != null && (bVar = (b) longSparseArray.get(bVar4.f9280n.f)) != null) {
                bVar4.f9284r = bVar;
            }
        }
    }

    @Override // l0.b, f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        ArrayList arrayList = this.f9291z;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.A;
            rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((b) arrayList.get(size)).d(rectF2, this.f9278l, true);
            rectF.union(rectF2);
        }
    }

    @Override // l0.b, i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        super.f(cVar, obj);
        if (obj == q.C) {
            if (cVar == null) {
                g0.a<Float, Float> aVar = this.f9290y;
                if (aVar != null) {
                    aVar.k(null);
                    return;
                }
                return;
            }
            p pVar = new p(cVar, null);
            this.f9290y = pVar;
            pVar.a(this);
            e(this.f9290y);
        }
    }

    @Override // l0.b
    public final void j(Canvas canvas, Matrix matrix, int r10) {
        RectF rectF = this.B;
        e eVar = this.f9280n;
        rectF.set(0.0f, 0.0f, eVar.f9307o, eVar.f9308p);
        matrix.mapRect(rectF);
        boolean z10 = this.f9279m.f4566s;
        ArrayList arrayList = this.f9291z;
        boolean z11 = z10 && arrayList.size() > 1 && r10 != 255;
        if (z11) {
            Paint paint = this.C;
            paint.setAlpha(r10);
            p0.g.e(canvas, rectF, paint, 31);
        } else {
            canvas.save();
        }
        if (z11) {
            r10 = 255;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!rectF.isEmpty() ? canvas.clipRect(rectF) : true) {
                ((b) arrayList.get(size)).g(canvas, matrix, r10);
            }
        }
        canvas.restore();
        d0.c.a();
    }

    @Override // l0.b
    public final void n(i0.e eVar, int r52, ArrayList arrayList, i0.e eVar2) {
        int r02 = 0;
        while (true) {
            ArrayList arrayList2 = this.f9291z;
            if (r02 >= arrayList2.size()) {
                return;
            }
            ((b) arrayList2.get(r02)).c(eVar, r52, arrayList, eVar2);
            r02++;
        }
    }

    @Override // l0.b
    public final void o(boolean z10) {
        super.o(z10);
        Iterator it = this.f9291z.iterator();
        while (it.hasNext()) {
            ((b) it.next()).o(z10);
        }
    }

    @Override // l0.b
    public final void p(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        super.p(f);
        g0.a<Float, Float> aVar = this.f9290y;
        e eVar = this.f9280n;
        if (aVar != null) {
            d0.f fVar = this.f9279m.f4552b;
            f = ((aVar.f().floatValue() * eVar.f9295b.f4531m) - eVar.f9295b.f4529k) / ((fVar.f4530l - fVar.f4529k) + 0.01f);
        }
        if (this.f9290y == null) {
            d0.f fVar2 = eVar.f9295b;
            f -= eVar.f9306n / (fVar2.f4530l - fVar2.f4529k);
        }
        if (eVar.f9305m != 0.0f && !"__container".equals(eVar.f9296c)) {
            f /= eVar.f9305m;
        }
        ArrayList arrayList = this.f9291z;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((b) arrayList.get(size)).p(f);
            }
        }
    }
}
