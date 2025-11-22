package l0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import d0.l;
import d0.u;
import g0.a;
import g0.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class b implements f0.e, a.InterfaceC0091a, i0.f {

    /* renamed from: a, reason: collision with root package name */
    public final Path f9268a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f9269b = new Matrix();

    /* renamed from: c, reason: collision with root package name */
    public final e0.a f9270c = new e0.a(1);

    /* renamed from: d, reason: collision with root package name */
    public final e0.a f9271d = new e0.a(PorterDuff.Mode.DST_IN, 0);

    /* renamed from: e, reason: collision with root package name */
    public final e0.a f9272e = new e0.a(PorterDuff.Mode.DST_OUT, 0);
    public final e0.a f;

    /* renamed from: g, reason: collision with root package name */
    public final e0.a f9273g;

    /* renamed from: h, reason: collision with root package name */
    public final RectF f9274h;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f9275i;

    /* renamed from: j, reason: collision with root package name */
    public final RectF f9276j;

    /* renamed from: k, reason: collision with root package name */
    public final RectF f9277k;

    /* renamed from: l, reason: collision with root package name */
    public final Matrix f9278l;

    /* renamed from: m, reason: collision with root package name */
    public final l f9279m;

    /* renamed from: n, reason: collision with root package name */
    public final e f9280n;

    /* renamed from: o, reason: collision with root package name */
    @Nullable
    public final g0.g f9281o;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public g0.c f9282p;

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public b f9283q;

    /* renamed from: r, reason: collision with root package name */
    @Nullable
    public b f9284r;

    /* renamed from: s, reason: collision with root package name */
    public List<b> f9285s;

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f9286t;

    /* renamed from: u, reason: collision with root package name */
    public final o f9287u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f9288v;
    public boolean w;

    /* renamed from: x, reason: collision with root package name */
    @Nullable
    public e0.a f9289x;

    public b(l lVar, e eVar) {
        e0.a aVar = new e0.a(1);
        this.f = aVar;
        this.f9273g = new e0.a(PorterDuff.Mode.CLEAR);
        this.f9274h = new RectF();
        this.f9275i = new RectF();
        this.f9276j = new RectF();
        this.f9277k = new RectF();
        this.f9278l = new Matrix();
        this.f9286t = new ArrayList();
        this.f9288v = true;
        this.f9279m = lVar;
        this.f9280n = eVar;
        androidx.camera.camera2.internal.c.h(new StringBuilder(), eVar.f9296c, "#draw");
        aVar.setXfermode(eVar.f9313u == 3 ? new PorterDuffXfermode(PorterDuff.Mode.DST_OUT) : new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        j0.l lVar2 = eVar.f9301i;
        lVar2.getClass();
        o oVar = new o(lVar2);
        this.f9287u = oVar;
        oVar.b(this);
        List<k0.f> list = eVar.f9300h;
        if (list != null && !list.isEmpty()) {
            g0.g gVar = new g0.g(list);
            this.f9281o = gVar;
            Iterator it = ((List) gVar.f5749a).iterator();
            while (it.hasNext()) {
                ((g0.a) it.next()).a(this);
            }
            for (g0.a<?, ?> aVar2 : (List) this.f9281o.f5750b) {
                e(aVar2);
                aVar2.a(this);
            }
        }
        e eVar2 = this.f9280n;
        if (eVar2.f9312t.isEmpty()) {
            if (true != this.f9288v) {
                this.f9288v = true;
                this.f9279m.invalidateSelf();
                return;
            }
            return;
        }
        g0.c cVar = new g0.c(eVar2.f9312t);
        this.f9282p = cVar;
        cVar.f5736b = true;
        cVar.a(new a(this));
        boolean z10 = this.f9282p.f().floatValue() == 1.0f;
        if (z10 != this.f9288v) {
            this.f9288v = z10;
            this.f9279m.invalidateSelf();
        }
        e(this.f9282p);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f9279m.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<f0.c> list, List<f0.c> list2) {
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r6, ArrayList arrayList, i0.e eVar2) {
        b bVar = this.f9283q;
        e eVar3 = this.f9280n;
        if (bVar != null) {
            String str = bVar.f9280n.f9296c;
            eVar2.getClass();
            i0.e eVar4 = new i0.e(eVar2);
            eVar4.f7225a.add(str);
            if (eVar.a(r6, this.f9283q.f9280n.f9296c)) {
                b bVar2 = this.f9283q;
                i0.e eVar5 = new i0.e(eVar4);
                eVar5.f7226b = bVar2;
                arrayList.add(eVar5);
            }
            if (eVar.d(r6, eVar3.f9296c)) {
                this.f9283q.n(eVar, eVar.b(r6, this.f9283q.f9280n.f9296c) + r6, arrayList, eVar4);
            }
        }
        if (eVar.c(r6, eVar3.f9296c)) {
            String str2 = eVar3.f9296c;
            if (!"__container".equals(str2)) {
                eVar2.getClass();
                i0.e eVar6 = new i0.e(eVar2);
                eVar6.f7225a.add(str2);
                if (eVar.a(r6, str2)) {
                    i0.e eVar7 = new i0.e(eVar6);
                    eVar7.f7226b = this;
                    arrayList.add(eVar7);
                }
                eVar2 = eVar6;
            }
            if (eVar.d(r6, str2)) {
                n(eVar, eVar.b(r6, str2) + r6, arrayList, eVar2);
            }
        }
    }

    @Override // f0.e
    @CallSuper
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        this.f9274h.set(0.0f, 0.0f, 0.0f, 0.0f);
        h();
        Matrix matrix2 = this.f9278l;
        matrix2.set(matrix);
        if (z10) {
            List<b> list = this.f9285s;
            if (list != null) {
                int size = list.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    } else {
                        matrix2.preConcat(this.f9285s.get(size).f9287u.d());
                    }
                }
            } else {
                b bVar = this.f9284r;
                if (bVar != null) {
                    matrix2.preConcat(bVar.f9287u.d());
                }
            }
        }
        matrix2.preConcat(this.f9287u.d());
    }

    public final void e(@Nullable g0.a<?, ?> aVar) {
        if (aVar == null) {
            return;
        }
        this.f9286t.add(aVar);
    }

    @Override // i0.f
    @CallSuper
    public void f(@Nullable q0.c cVar, Object obj) {
        this.f9287u.c(cVar, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0210  */
    @Override // f0.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(android.graphics.Canvas r18, android.graphics.Matrix r19, int r20) {
        /*
            Method dump skipped, instructions count: 915
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.b.g(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    @Override // f0.c
    public final String getName() {
        return this.f9280n.f9296c;
    }

    public final void h() {
        if (this.f9285s != null) {
            return;
        }
        if (this.f9284r == null) {
            this.f9285s = Collections.emptyList();
            return;
        }
        this.f9285s = new ArrayList();
        for (b bVar = this.f9284r; bVar != null; bVar = bVar.f9284r) {
            this.f9285s.add(bVar);
        }
    }

    public final void i(Canvas canvas) {
        RectF rectF = this.f9274h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f9273g);
        d0.c.a();
    }

    public abstract void j(Canvas canvas, Matrix matrix, int r32);

    public final boolean k() {
        g0.g gVar = this.f9281o;
        return (gVar == null || ((List) gVar.f5749a).isEmpty()) ? false : true;
    }

    public final void l() {
        u uVar = this.f9279m.f4552b.f4520a;
        String str = this.f9280n.f9296c;
        if (uVar.f4634a) {
            HashMap map = uVar.f4636c;
            p0.e eVar = (p0.e) map.get(str);
            if (eVar == null) {
                eVar = new p0.e();
                map.put(str, eVar);
            }
            int r22 = eVar.f12211a + 1;
            eVar.f12211a = r22;
            if (r22 == Integer.MAX_VALUE) {
                eVar.f12211a = r22 / 2;
            }
            if (str.equals("__container")) {
                Iterator<E> it = uVar.f4635b.iterator();
                while (it.hasNext()) {
                    ((u.a) it.next()).a();
                }
            }
        }
    }

    public final void m(g0.a<?, ?> aVar) {
        this.f9286t.remove(aVar);
    }

    public void n(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2) {
    }

    public void o(boolean z10) {
        if (z10 && this.f9289x == null) {
            this.f9289x = new e0.a();
        }
        this.w = z10;
    }

    public void p(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        o oVar = this.f9287u;
        g0.a<Integer, Integer> aVar = oVar.f5776j;
        if (aVar != null) {
            aVar.j(f);
        }
        g0.a<?, Float> aVar2 = oVar.f5779m;
        if (aVar2 != null) {
            aVar2.j(f);
        }
        g0.a<?, Float> aVar3 = oVar.f5780n;
        if (aVar3 != null) {
            aVar3.j(f);
        }
        g0.a<PointF, PointF> aVar4 = oVar.f;
        if (aVar4 != null) {
            aVar4.j(f);
        }
        g0.a<?, PointF> aVar5 = oVar.f5773g;
        if (aVar5 != null) {
            aVar5.j(f);
        }
        g0.a<q0.d, q0.d> aVar6 = oVar.f5774h;
        if (aVar6 != null) {
            aVar6.j(f);
        }
        g0.a<Float, Float> aVar7 = oVar.f5775i;
        if (aVar7 != null) {
            aVar7.j(f);
        }
        g0.c cVar = oVar.f5777k;
        if (cVar != null) {
            cVar.j(f);
        }
        g0.c cVar2 = oVar.f5778l;
        if (cVar2 != null) {
            cVar2.j(f);
        }
        int r02 = 0;
        g0.g gVar = this.f9281o;
        if (gVar != null) {
            for (int r22 = 0; r22 < ((List) gVar.f5749a).size(); r22++) {
                ((g0.a) ((List) gVar.f5749a).get(r22)).j(f);
            }
        }
        g0.c cVar3 = this.f9282p;
        if (cVar3 != null) {
            cVar3.j(f);
        }
        b bVar = this.f9283q;
        if (bVar != null) {
            bVar.p(f);
        }
        while (true) {
            ArrayList arrayList = this.f9286t;
            if (r02 >= arrayList.size()) {
                return;
            }
            ((g0.a) arrayList.get(r02)).j(f);
            r02++;
        }
    }
}
