package f0;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@TargetApi(19)
/* loaded from: classes.dex */
public final class l implements m, j {

    /* renamed from: a, reason: collision with root package name */
    public final Path f5447a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Path f5448b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final Path f5449c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f5450d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final k0.g f5451e;

    public l(k0.g gVar) {
        gVar.getClass();
        this.f5451e = gVar;
    }

    @TargetApi(19)
    public final void a(Path.Op op) {
        Matrix matrixD;
        Matrix matrixD2;
        Path path = this.f5448b;
        path.reset();
        Path path2 = this.f5447a;
        path2.reset();
        ArrayList arrayList = this.f5450d;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            m mVar = (m) arrayList.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                ArrayList arrayList2 = (ArrayList) dVar.e();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path path3 = ((m) arrayList2.get(size2)).getPath();
                    g0.o oVar = dVar.f5403k;
                    if (oVar != null) {
                        matrixD2 = oVar.d();
                    } else {
                        matrixD2 = dVar.f5396c;
                        matrixD2.reset();
                    }
                    path3.transform(matrixD2);
                    path.addPath(path3);
                }
            } else {
                path.addPath(mVar.getPath());
            }
        }
        int r32 = 0;
        m mVar2 = (m) arrayList.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List<m> listE = dVar2.e();
            while (true) {
                ArrayList arrayList3 = (ArrayList) listE;
                if (r32 >= arrayList3.size()) {
                    break;
                }
                Path path4 = ((m) arrayList3.get(r32)).getPath();
                g0.o oVar2 = dVar2.f5403k;
                if (oVar2 != null) {
                    matrixD = oVar2.d();
                } else {
                    matrixD = dVar2.f5396c;
                    matrixD.reset();
                }
                path4.transform(matrixD);
                path2.addPath(path4);
                r32++;
            }
        } else {
            path2.set(mVar2.getPath());
        }
        this.f5449c.op(path2, path, op);
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
        int r02 = 0;
        while (true) {
            ArrayList arrayList = this.f5450d;
            if (r02 >= arrayList.size()) {
                return;
            }
            ((m) arrayList.get(r02)).b(list, list2);
            r02++;
        }
    }

    @Override // f0.j
    public final void e(ListIterator<c> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c cVarPrevious = listIterator.previous();
            if (cVarPrevious instanceof m) {
                this.f5450d.add((m) cVarPrevious);
                listIterator.remove();
            }
        }
    }

    @Override // f0.m
    public final Path getPath() {
        Path.Op op;
        Path path = this.f5449c;
        path.reset();
        k0.g gVar = this.f5451e;
        if (gVar.f8643b) {
            return path;
        }
        int r12 = g.d.c(gVar.f8642a);
        if (r12 == 0) {
            int r13 = 0;
            while (true) {
                ArrayList arrayList = this.f5450d;
                if (r13 >= arrayList.size()) {
                    break;
                }
                path.addPath(((m) arrayList.get(r13)).getPath());
                r13++;
            }
        } else {
            if (r12 == 1) {
                op = Path.Op.UNION;
            } else if (r12 == 2) {
                op = Path.Op.REVERSE_DIFFERENCE;
            } else if (r12 == 3) {
                op = Path.Op.INTERSECT;
            } else if (r12 == 4) {
                op = Path.Op.XOR;
            }
            a(op);
        }
        return path;
    }
}
