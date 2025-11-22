package f0;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class a implements a.InterfaceC0091a, k, e {

    /* renamed from: e, reason: collision with root package name */
    public final d0.l f5382e;
    public final l0.b f;

    /* renamed from: h, reason: collision with root package name */
    public final float[] f5384h;

    /* renamed from: i, reason: collision with root package name */
    public final e0.a f5385i;

    /* renamed from: j, reason: collision with root package name */
    public final g0.c f5386j;

    /* renamed from: k, reason: collision with root package name */
    public final g0.e f5387k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f5388l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public final g0.c f5389m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public g0.p f5390n;

    /* renamed from: a, reason: collision with root package name */
    public final PathMeasure f5378a = new PathMeasure();

    /* renamed from: b, reason: collision with root package name */
    public final Path f5379b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final Path f5380c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final RectF f5381d = new RectF();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f5383g = new ArrayList();

    /* renamed from: f0.a$a, reason: collision with other inner class name */
    public static final class C0084a {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f5391a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        public final s f5392b;

        public C0084a(s sVar) {
            this.f5392b = sVar;
        }
    }

    public a(d0.l lVar, l0.b bVar, Paint.Cap cap, Paint.Join join, float f, j0.d dVar, j0.b bVar2, List<j0.b> list, j0.b bVar3) {
        e0.a aVar = new e0.a(1);
        this.f5385i = aVar;
        this.f5382e = lVar;
        this.f = bVar;
        aVar.setStyle(Paint.Style.STROKE);
        aVar.setStrokeCap(cap);
        aVar.setStrokeJoin(join);
        aVar.setStrokeMiter(f);
        this.f5387k = (g0.e) dVar.c();
        this.f5386j = (g0.c) bVar2.c();
        this.f5389m = (g0.c) (bVar3 == null ? null : bVar3.c());
        this.f5388l = new ArrayList(list.size());
        this.f5384h = new float[list.size()];
        for (int r52 = 0; r52 < list.size(); r52++) {
            this.f5388l.add(list.get(r52).c());
        }
        bVar.e(this.f5387k);
        bVar.e(this.f5386j);
        for (int r53 = 0; r53 < this.f5388l.size(); r53++) {
            bVar.e((g0.a) this.f5388l.get(r53));
        }
        g0.c cVar = this.f5389m;
        if (cVar != null) {
            bVar.e(cVar);
        }
        this.f5387k.a(this);
        this.f5386j.a(this);
        for (int r32 = 0; r32 < list.size(); r32++) {
            ((g0.a) this.f5388l.get(r32)).a(this);
        }
        g0.c cVar2 = this.f5389m;
        if (cVar2 != null) {
            cVar2.a(this);
        }
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5382e.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        ArrayList arrayList;
        ArrayList arrayList2 = (ArrayList) list;
        C0084a c0084a = null;
        s sVar = null;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            c cVar = (c) arrayList2.get(size);
            if (cVar instanceof s) {
                s sVar2 = (s) cVar;
                if (sVar2.f5495c == 2) {
                    sVar = sVar2;
                }
            }
        }
        if (sVar != null) {
            sVar.c(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            arrayList = this.f5383g;
            if (size2 < 0) {
                break;
            }
            c cVar2 = list2.get(size2);
            if (cVar2 instanceof s) {
                s sVar3 = (s) cVar2;
                if (sVar3.f5495c == 2) {
                    if (c0084a != null) {
                        arrayList.add(c0084a);
                    }
                    C0084a c0084a2 = new C0084a(sVar3);
                    sVar3.c(this);
                    c0084a = c0084a2;
                }
            }
            if (cVar2 instanceof m) {
                if (c0084a == null) {
                    c0084a = new C0084a(sVar);
                }
                c0084a.f5391a.add((m) cVar2);
            }
        }
        if (c0084a != null) {
            arrayList.add(c0084a);
        }
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2) {
        p0.f.d(eVar, r22, arrayList, eVar2, this);
    }

    @Override // f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        Path path = this.f5379b;
        path.reset();
        int r12 = 0;
        while (true) {
            ArrayList arrayList = this.f5383g;
            if (r12 >= arrayList.size()) {
                RectF rectF2 = this.f5381d;
                path.computeBounds(rectF2, false);
                float fL = this.f5386j.l() / 2.0f;
                rectF2.set(rectF2.left - fL, rectF2.top - fL, rectF2.right + fL, rectF2.bottom + fL);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                d0.c.a();
                return;
            }
            C0084a c0084a = (C0084a) arrayList.get(r12);
            for (int r32 = 0; r32 < c0084a.f5391a.size(); r32++) {
                path.addPath(((m) c0084a.f5391a.get(r32)).getPath(), matrix);
            }
            r12++;
        }
    }

    @Override // i0.f
    @CallSuper
    public void f(@Nullable q0.c cVar, Object obj) {
        g0.a aVar;
        if (obj == d0.q.f4604d) {
            aVar = this.f5387k;
        } else {
            if (obj != d0.q.f4616q) {
                if (obj == d0.q.E) {
                    g0.p pVar = this.f5390n;
                    l0.b bVar = this.f;
                    if (pVar != null) {
                        bVar.m(pVar);
                    }
                    if (cVar == null) {
                        this.f5390n = null;
                        return;
                    }
                    g0.p pVar2 = new g0.p(cVar, null);
                    this.f5390n = pVar2;
                    pVar2.a(this);
                    bVar.e(this.f5390n);
                    return;
                }
                return;
            }
            aVar = this.f5386j;
        }
        aVar.k(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01b6  */
    @Override // f0.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g(android.graphics.Canvas r20, android.graphics.Matrix r21, int r22) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.a.g(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }
}
