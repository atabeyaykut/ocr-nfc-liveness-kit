package j3;

import android.content.Context;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public static final u3.a f7992a = new u3.a("GoogleSignInCommon", new String[0]);

    public static void a(Context context) {
        n.a(context).b();
        Iterator<n3.d> it = n3.d.a().iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new UnsupportedOperationException();
        }
        synchronized (o3.d.f11099r) {
            o3.d dVar = o3.d.f11100s;
            if (dVar != null) {
                dVar.f11108i.incrementAndGet();
                h4.i iVar = dVar.f11113n;
                iVar.sendMessageAtFrontOfQueue(iVar.obtainMessage(10));
            }
        }
    }
}
