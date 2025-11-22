package r0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.lifecycle.Lifecycle;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet<Integer> f13878a = new HashSet<>();

    /* renamed from: b, reason: collision with root package name */
    public static final Handler f13879b = new Handler(Looper.getMainLooper(), a.f13880a);

    public static final class a implements Handler.Callback {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13880a = new a();

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            kotlin.jvm.internal.h.f(message, "message");
            Object obj = message.obj;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.airbnb.mvrx.MavericksView");
            }
            w wVar = (w) obj;
            y.f13878a.remove(Integer.valueOf(System.identityHashCode(wVar)));
            Lifecycle lifecycle = wVar.getLifecycle();
            kotlin.jvm.internal.h.e(lifecycle, "view.lifecycle");
            if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
                return true;
            }
            wVar.invalidate();
            return true;
        }
    }
}
