package x0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19114a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f19115b = new Handler(Looper.getMainLooper(), new a());

    public static final class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((w) message.obj).recycle();
            return true;
        }
    }

    public final synchronized void a(w<?> wVar, boolean z10) {
        if (this.f19114a || z10) {
            this.f19115b.obtainMessage(1, wVar).sendToTarget();
        } else {
            this.f19114a = true;
            wVar.recycle();
            this.f19114a = false;
        }
    }
}
