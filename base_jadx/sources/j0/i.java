package j0;

import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class i implements m<PointF, PointF> {

    /* renamed from: a, reason: collision with root package name */
    public final b f7951a;

    /* renamed from: b, reason: collision with root package name */
    public final b f7952b;

    public i(b bVar, b bVar2) {
        this.f7951a = bVar;
        this.f7952b = bVar2;
    }

    @Override // j0.m
    public final g0.a<PointF, PointF> c() {
        return new g0.m((g0.c) this.f7951a.c(), (g0.c) this.f7952b.c());
    }

    @Override // j0.m
    public final List<q0.a<PointF>> d() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // j0.m
    public final boolean f() {
        return this.f7951a.f() && this.f7952b.f();
    }
}
