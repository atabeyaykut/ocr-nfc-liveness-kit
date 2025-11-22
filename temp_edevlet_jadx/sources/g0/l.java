package g0;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class l extends a<k0.k, Path> {

    /* renamed from: i, reason: collision with root package name */
    public final k0.k f5760i;

    /* renamed from: j, reason: collision with root package name */
    public final Path f5761j;

    public l(List<q0.a<k0.k>> list) {
        super(list);
        this.f5760i = new k0.k();
        this.f5761j = new Path();
    }

    @Override // g0.a
    public final Path g(q0.a<k0.k> aVar, float f) {
        k0.k kVar = aVar.f13271b;
        k0.k kVar2 = aVar.f13272c;
        k0.k kVar3 = this.f5760i;
        if (kVar3.f8664b == null) {
            kVar3.f8664b = new PointF();
        }
        kVar3.f8665c = kVar.f8665c || kVar2.f8665c;
        ArrayList arrayList = kVar.f8663a;
        int size = arrayList.size();
        int size2 = kVar2.f8663a.size();
        ArrayList arrayList2 = kVar2.f8663a;
        if (size != size2) {
            p0.c.b("Curves must have the same number of control points. Shape 1: " + arrayList.size() + "\tShape 2: " + arrayList2.size());
        }
        int r72 = Math.min(arrayList.size(), arrayList2.size());
        ArrayList arrayList3 = kVar3.f8663a;
        if (arrayList3.size() < r72) {
            for (int size3 = arrayList3.size(); size3 < r72; size3++) {
                arrayList3.add(new i0.a());
            }
        } else if (arrayList3.size() > r72) {
            for (int size4 = arrayList3.size() - 1; size4 >= r72; size4--) {
                arrayList3.remove(arrayList3.size() - 1);
            }
        }
        PointF pointF = kVar.f8664b;
        PointF pointF2 = kVar2.f8664b;
        float f10 = pointF.x;
        float f11 = pointF2.x;
        PointF pointF3 = p0.f.f12212a;
        float fD = androidx.appcompat.graphics.drawable.a.d(f11, f10, f, f10);
        float f12 = pointF.y;
        float fD2 = androidx.appcompat.graphics.drawable.a.d(pointF2.y, f12, f, f12);
        if (kVar3.f8664b == null) {
            kVar3.f8664b = new PointF();
        }
        kVar3.f8664b.set(fD, fD2);
        for (int size5 = arrayList3.size() - 1; size5 >= 0; size5--) {
            i0.a aVar2 = (i0.a) arrayList.get(size5);
            i0.a aVar3 = (i0.a) arrayList2.get(size5);
            PointF pointF4 = aVar2.f7204a;
            PointF pointF5 = aVar3.f7204a;
            i0.a aVar4 = (i0.a) arrayList3.get(size5);
            float f13 = pointF4.x;
            float fD3 = androidx.appcompat.graphics.drawable.a.d(pointF5.x, f13, f, f13);
            float f14 = pointF4.y;
            aVar4.f7204a.set(fD3, androidx.appcompat.graphics.drawable.a.d(pointF5.y, f14, f, f14));
            i0.a aVar5 = (i0.a) arrayList3.get(size5);
            PointF pointF6 = aVar2.f7205b;
            float f15 = pointF6.x;
            PointF pointF7 = aVar3.f7205b;
            float fD4 = androidx.appcompat.graphics.drawable.a.d(pointF7.x, f15, f, f15);
            float f16 = pointF6.y;
            aVar5.f7205b.set(fD4, androidx.appcompat.graphics.drawable.a.d(pointF7.y, f16, f, f16));
            i0.a aVar6 = (i0.a) arrayList3.get(size5);
            PointF pointF8 = aVar2.f7206c;
            float f17 = pointF8.x;
            PointF pointF9 = aVar3.f7206c;
            float fD5 = androidx.appcompat.graphics.drawable.a.d(pointF9.x, f17, f, f17);
            float f18 = pointF8.y;
            aVar6.f7206c.set(fD5, androidx.appcompat.graphics.drawable.a.d(pointF9.y, f18, f, f18));
        }
        Path path = this.f5761j;
        path.reset();
        PointF pointF10 = kVar3.f8664b;
        path.moveTo(pointF10.x, pointF10.y);
        PointF pointF11 = p0.f.f12212a;
        pointF11.set(pointF10.x, pointF10.y);
        for (int r6 = 0; r6 < arrayList3.size(); r6++) {
            i0.a aVar7 = (i0.a) arrayList3.get(r6);
            PointF pointF12 = aVar7.f7204a;
            boolean zEquals = pointF12.equals(pointF11);
            PointF pointF13 = aVar7.f7205b;
            PointF pointF14 = aVar7.f7206c;
            if (zEquals && pointF13.equals(pointF14)) {
                path.lineTo(pointF14.x, pointF14.y);
            } else {
                path.cubicTo(pointF12.x, pointF12.y, pointF13.x, pointF13.y, pointF14.x, pointF14.y);
            }
            pointF11.set(pointF14.x, pointF14.y);
        }
        if (kVar3.f8665c) {
            path.close();
        }
        return path;
    }
}
