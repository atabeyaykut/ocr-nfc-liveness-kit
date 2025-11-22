package d0;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f4627a;

    public s(t tVar) {
        this.f4627a = tVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4627a.f4632d == null) {
            return;
        }
        r<T> rVar = this.f4627a.f4632d;
        V v10 = rVar.f4625a;
        if (v10 != 0) {
            t.a(this.f4627a, v10);
            return;
        }
        t tVar = this.f4627a;
        Throwable th2 = rVar.f4626b;
        synchronized (tVar) {
            ArrayList arrayList = new ArrayList(tVar.f4630b);
            if (arrayList.isEmpty()) {
                p0.c.c("Lottie encountered an error but no failure listener was added:", th2);
            } else {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((o) it.next()).onResult(th2);
                }
            }
        }
    }
}
