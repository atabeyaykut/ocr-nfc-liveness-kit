package u;

import android.os.SystemClock;
import q.a;

/* loaded from: classes.dex */
public final class j extends g {
    @Override // u.g
    public final boolean a(q.e eVar) {
        q.a aVar = eVar.f13261a;
        if ((aVar instanceof a.C0221a ? ((a.C0221a) aVar).f13254a : Integer.MAX_VALUE) > 100) {
            q.a aVar2 = eVar.f13262b;
            if ((aVar2 instanceof a.C0221a ? ((a.C0221a) aVar2).f13254a : Integer.MAX_VALUE) > 100) {
                return true;
            }
        }
        return false;
    }

    @Override // u.g
    public final boolean b() {
        boolean z10;
        synchronized (f.f17732a) {
            int r12 = f.f17734c;
            f.f17734c = r12 + 1;
            if (r12 >= 30 || SystemClock.uptimeMillis() > f.f17735d + ((long) 30000)) {
                f.f17734c = 0;
                f.f17735d = SystemClock.uptimeMillis();
                String[] list = f.f17733b.list();
                if (list == null) {
                    list = new String[0];
                }
                f.f17736e = list.length < 800;
            }
            z10 = f.f17736e;
        }
        return z10;
    }
}
