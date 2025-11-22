package f0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class d implements e, m, a.InterfaceC0091a, i0.f {

    /* renamed from: a, reason: collision with root package name */
    public final e0.a f5394a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f5395b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f5396c;

    /* renamed from: d, reason: collision with root package name */
    public final Path f5397d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f5398e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5399g;

    /* renamed from: h, reason: collision with root package name */
    public final List<c> f5400h;

    /* renamed from: i, reason: collision with root package name */
    public final d0.l f5401i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public ArrayList f5402j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public final g0.o f5403k;

    public d(d0.l lVar, l0.b bVar, String str, boolean z10, ArrayList arrayList, @Nullable j0.l lVar2) {
        this.f5394a = new e0.a();
        this.f5395b = new RectF();
        this.f5396c = new Matrix();
        this.f5397d = new Path();
        this.f5398e = new RectF();
        this.f = str;
        this.f5401i = lVar;
        this.f5399g = z10;
        this.f5400h = arrayList;
        if (lVar2 != null) {
            g0.o oVar = new g0.o(lVar2);
            this.f5403k = oVar;
            oVar.a(bVar);
            oVar.b(this);
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            c cVar = (c) arrayList.get(size);
            if (cVar instanceof j) {
                arrayList2.add((j) cVar);
            }
        }
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return;
            } else {
                ((j) arrayList2.get(size2)).e(arrayList.listIterator(arrayList.size()));
            }
        }
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        this.f5401i.invalidateSelf();
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        int size = list.size();
        List<c> list3 = this.f5400h;
        ArrayList arrayList = new ArrayList(list3.size() + size);
        arrayList.addAll(list);
        for (int size2 = list3.size() - 1; size2 >= 0; size2--) {
            c cVar = list3.get(size2);
            cVar.b(arrayList, list3.subList(0, size2));
            arrayList.add(cVar);
        }
    }

    @Override // i0.f
    public final void c(i0.e eVar, int r52, ArrayList arrayList, i0.e eVar2) {
        String str = this.f;
        if (!eVar.c(r52, str) && !"__container".equals(str)) {
            return;
        }
        if (!"__container".equals(str)) {
            eVar2.getClass();
            i0.e eVar3 = new i0.e(eVar2);
            eVar3.f7225a.add(str);
            if (eVar.a(r52, str)) {
                i0.e eVar4 = new i0.e(eVar3);
                eVar4.f7226b = this;
                arrayList.add(eVar4);
            }
            eVar2 = eVar3;
        }
        if (!eVar.d(r52, str)) {
            return;
        }
        int r02 = eVar.b(r52, str) + r52;
        int r53 = 0;
        while (true) {
            List<c> list = this.f5400h;
            if (r53 >= list.size()) {
                return;
            }
            c cVar = list.get(r53);
            if (cVar instanceof i0.f) {
                ((i0.f) cVar).c(eVar, r02, arrayList, eVar2);
            }
            r53++;
        }
    }

    @Override // f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        Matrix matrix2 = this.f5396c;
        matrix2.set(matrix);
        g0.o oVar = this.f5403k;
        if (oVar != null) {
            matrix2.preConcat(oVar.d());
        }
        RectF rectF2 = this.f5398e;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        List<c> list = this.f5400h;
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            c cVar = list.get(size);
            if (cVar instanceof e) {
                ((e) cVar).d(rectF2, matrix2, z10);
                rectF.union(rectF2);
            }
        }
    }

    public final List<m> e() {
        if (this.f5402j == null) {
            this.f5402j = new ArrayList();
            int r02 = 0;
            while (true) {
                List<c> list = this.f5400h;
                if (r02 >= list.size()) {
                    break;
                }
                c cVar = list.get(r02);
                if (cVar instanceof m) {
                    this.f5402j.add((m) cVar);
                }
                r02++;
            }
        }
        return this.f5402j;
    }

    @Override // i0.f
    public final void f(@Nullable q0.c cVar, Object obj) {
        g0.o oVar = this.f5403k;
        if (oVar != null) {
            oVar.c(cVar, obj);
        }
    }

    @Override // f0.e
    public final void g(Canvas canvas, Matrix matrix, int r10) {
        boolean z10;
        if (this.f5399g) {
            return;
        }
        Matrix matrix2 = this.f5396c;
        matrix2.set(matrix);
        g0.o oVar = this.f5403k;
        if (oVar != null) {
            matrix2.preConcat(oVar.d());
            r10 = (int) (((((oVar.f5776j == null ? 100 : r9.f().intValue()) / 100.0f) * r10) / 255.0f) * 255.0f);
        }
        boolean z11 = this.f5401i.f4566s;
        boolean z12 = false;
        List<c> list = this.f5400h;
        if (z11) {
            int r92 = 0;
            int r52 = 0;
            while (true) {
                if (r92 >= list.size()) {
                    z10 = false;
                    break;
                } else {
                    if ((list.get(r92) instanceof e) && (r52 = r52 + 1) >= 2) {
                        z10 = true;
                        break;
                    }
                    r92++;
                }
            }
            if (z10 && r10 != 255) {
                z12 = true;
            }
        }
        if (z12) {
            RectF rectF = this.f5395b;
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            d(rectF, matrix2, true);
            e0.a aVar = this.f5394a;
            aVar.setAlpha(r10);
            p0.g.e(canvas, rectF, aVar, 31);
        }
        if (z12) {
            r10 = 255;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof e) {
                ((e) cVar).g(canvas, matrix2, r10);
            }
        }
        if (z12) {
            canvas.restore();
        }
    }

    @Override // f0.c
    public final String getName() {
        return this.f;
    }

    @Override // f0.m
    public final Path getPath() {
        Matrix matrix = this.f5396c;
        matrix.reset();
        g0.o oVar = this.f5403k;
        if (oVar != null) {
            matrix.set(oVar.d());
        }
        Path path = this.f5397d;
        path.reset();
        if (this.f5399g) {
            return path;
        }
        List<c> list = this.f5400h;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof m) {
                path.addPath(((m) cVar).getPath(), matrix);
            }
        }
        return path;
    }

    public d(d0.l lVar, l0.b bVar, k0.m mVar) {
        j0.l lVar2;
        String str = mVar.f8671a;
        boolean z10 = mVar.f8673c;
        List<k0.b> list = mVar.f8672b;
        ArrayList arrayList = new ArrayList(list.size());
        int r02 = 0;
        for (int r12 = 0; r12 < list.size(); r12++) {
            c cVarA = list.get(r12).a(lVar, bVar);
            if (cVarA != null) {
                arrayList.add(cVarA);
            }
        }
        while (true) {
            if (r02 >= list.size()) {
                lVar2 = null;
                break;
            }
            k0.b bVar2 = list.get(r02);
            if (bVar2 instanceof j0.l) {
                lVar2 = (j0.l) bVar2;
                break;
            }
            r02++;
        }
        this(lVar, bVar, str, z10, arrayList, lVar2);
    }
}
