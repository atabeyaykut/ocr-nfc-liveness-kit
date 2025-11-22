package l0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import d0.l;
import java.util.ArrayList;
import java.util.Collections;
import k0.m;

/* loaded from: classes.dex */
public final class g extends b {

    /* renamed from: y, reason: collision with root package name */
    public final f0.d f9315y;

    public g(l lVar, e eVar) {
        super(lVar, eVar);
        f0.d dVar = new f0.d(lVar, this, new m("__container", false, eVar.f9294a));
        this.f9315y = dVar;
        dVar.b(Collections.emptyList(), Collections.emptyList());
    }

    @Override // l0.b, f0.e
    public final void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        this.f9315y.d(rectF, this.f9278l, z10);
    }

    @Override // l0.b
    public final void j(@NonNull Canvas canvas, Matrix matrix, int r42) {
        this.f9315y.g(canvas, matrix, r42);
    }

    @Override // l0.b
    public final void n(i0.e eVar, int r32, ArrayList arrayList, i0.e eVar2) {
        this.f9315y.c(eVar, r32, arrayList, eVar2);
    }
}
