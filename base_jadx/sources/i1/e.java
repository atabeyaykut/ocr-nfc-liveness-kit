package i1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.o;
import i1.g;

/* loaded from: classes.dex */
public final class e extends g1.c<c> {
    public e(c cVar) {
        super(cVar);
    }

    @Override // x0.w
    @NonNull
    public final Class<c> a() {
        return c.class;
    }

    @Override // x0.w
    public final int getSize() {
        g gVar = ((c) this.f5788a).f7243a.f7253a;
        return gVar.f7255a.f() + gVar.f7268o;
    }

    @Override // g1.c, x0.s
    public final void initialize() {
        ((c) this.f5788a).f7243a.f7253a.f7265l.prepareToDraw();
    }

    @Override // x0.w
    public final void recycle() {
        c cVar = (c) this.f5788a;
        cVar.stop();
        cVar.f7246d = true;
        g gVar = cVar.f7243a.f7253a;
        gVar.f7257c.clear();
        Bitmap bitmap = gVar.f7265l;
        if (bitmap != null) {
            gVar.f7259e.d(bitmap);
            gVar.f7265l = null;
        }
        gVar.f = false;
        g.a aVar = gVar.f7262i;
        o oVar = gVar.f7258d;
        if (aVar != null) {
            oVar.k(aVar);
            gVar.f7262i = null;
        }
        g.a aVar2 = gVar.f7264k;
        if (aVar2 != null) {
            oVar.k(aVar2);
            gVar.f7264k = null;
        }
        g.a aVar3 = gVar.f7267n;
        if (aVar3 != null) {
            oVar.k(aVar3);
            gVar.f7267n = null;
        }
        gVar.f7255a.clear();
        gVar.f7263j = true;
    }
}
