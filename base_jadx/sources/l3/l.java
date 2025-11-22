package l3;

import android.util.Log;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9358a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9359b;

    public /* synthetic */ l(int r12, Object obj) {
        this.f9358a = r12;
        this.f9359b = obj;
    }

    private final void a() {
        g5.a aVar = (g5.a) this.f9359b;
        synchronized (aVar.f5811a) {
            if (aVar.b()) {
                Log.e("WakeLock", String.valueOf(aVar.f5819j).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                aVar.d();
                if (aVar.b()) {
                    aVar.f5813c = 1;
                    aVar.e();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l3.l.run():void");
    }
}
