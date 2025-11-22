package g7;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.firebase.messaging.FirebaseMessaging;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class s0 {

    /* renamed from: i, reason: collision with root package name */
    public static final long f5916i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f5917j = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Context f5918a;

    /* renamed from: b, reason: collision with root package name */
    public final d0 f5919b;

    /* renamed from: c, reason: collision with root package name */
    public final y f5920c;

    /* renamed from: d, reason: collision with root package name */
    public final FirebaseMessaging f5921d;
    public final ScheduledExecutorService f;

    /* renamed from: h, reason: collision with root package name */
    public final q0 f5924h;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("pendingOperations")
    public final ArrayMap f5922e = new ArrayMap();

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    public boolean f5923g = false;

    public s0(FirebaseMessaging firebaseMessaging, d0 d0Var, q0 q0Var, y yVar, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.f5921d = firebaseMessaging;
        this.f5919b = d0Var;
        this.f5924h = q0Var;
        this.f5920c = yVar;
        this.f5918a = context;
        this.f = scheduledExecutorService;
    }

    @WorkerThread
    public static <T> void a(h5.k<T> kVar) throws IOException {
        try {
            h5.n.b(kVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e11);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e12) {
            e = e12;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    public static boolean d() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3);
    }

    @WorkerThread
    public final void b(String str) throws IOException {
        String strA = this.f5921d.a();
        y yVar = this.f5920c;
        yVar.getClass();
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        String strValueOf2 = String.valueOf(str);
        a(yVar.b(strA, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle).e(x.f5943a, new w(yVar)));
    }

    @WorkerThread
    public final void c(String str) throws IOException {
        String strA = this.f5921d.a();
        y yVar = this.f5920c;
        yVar.getClass();
        Bundle bundle = new Bundle();
        String strValueOf = String.valueOf(str);
        bundle.putString("gcm.topic", strValueOf.length() != 0 ? "/topics/".concat(strValueOf) : new String("/topics/"));
        bundle.putString("delete", "1");
        String strValueOf2 = String.valueOf(str);
        a(yVar.b(strA, strValueOf2.length() != 0 ? "/topics/".concat(strValueOf2) : new String("/topics/"), bundle).e(x.f5943a, new w(yVar)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(p0 p0Var) {
        synchronized (this.f5922e) {
            String str = p0Var.f5901c;
            if (this.f5922e.containsKey(str)) {
                ArrayDeque arrayDeque = (ArrayDeque) this.f5922e.get(str);
                h5.l lVar = (h5.l) arrayDeque.poll();
                if (lVar != null) {
                    lVar.b(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f5922e.remove(str);
                }
            }
        }
    }

    public final synchronized void f(boolean z10) {
        this.f5923g = z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (d() == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
    
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0091 A[Catch: IOException -> 0x00ba, TryCatch #0 {IOException -> 0x00ba, blocks: (B:12:0x001d, B:28:0x0049, B:30:0x004f, B:39:0x00b6, B:31:0x0070, B:33:0x0079, B:34:0x008d, B:38:0x00af, B:35:0x0091, B:37:0x009a), top: B:59:0x001d }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g7.s0.g():boolean");
    }

    public final void h(long j10) {
        this.f.schedule(new t0(this, this.f5918a, this.f5919b, Math.min(Math.max(30L, j10 + j10), f5916i)), j10, TimeUnit.SECONDS);
        synchronized (this) {
            this.f5923g = true;
        }
    }
}
