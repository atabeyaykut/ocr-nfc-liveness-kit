package k0;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f8663a;

    /* renamed from: b, reason: collision with root package name */
    public PointF f8664b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8665c;

    public k() {
        this.f8663a = new ArrayList();
    }

    public k(PointF pointF, boolean z10, List<i0.a> list) {
        this.f8664b = pointF;
        this.f8665c = z10;
        this.f8663a = new ArrayList(list);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ShapeData{numCurves=");
        sb2.append(this.f8663a.size());
        sb2.append("closed=");
        return androidx.browser.browseractions.b.f(sb2, this.f8665c, '}');
    }
}
