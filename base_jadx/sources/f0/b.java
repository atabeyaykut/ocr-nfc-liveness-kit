package f0;

import android.graphics.Path;
import android.location.Location;
import java.util.List;
import p0.g;

/* loaded from: classes.dex */
public final class b implements h5.b {

    /* renamed from: a, reason: collision with root package name */
    public final Object f5393a;

    public final void a(Path path) {
        List list = (List) this.f5393a;
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            s sVar = (s) list.get(size);
            g.a aVar = p0.g.f12213a;
            if (sVar != null && !sVar.f5493a) {
                p0.g.a(path, sVar.f5496d.l() / 100.0f, sVar.f5497e.l() / 100.0f, sVar.f.l() / 360.0f);
            }
        }
    }

    @Override // h5.b
    public final Object c(h5.k kVar) {
        h5.l lVar = (h5.l) this.f5393a;
        n3.a aVar = m4.d.f9993k;
        if (kVar.m()) {
            lVar.d((Location) kVar.i());
            return null;
        }
        Exception excH = kVar.h();
        excH.getClass();
        lVar.c(excH);
        return null;
    }
}
