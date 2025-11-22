package b8;

import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.lifecycle.CoroutineLiveDataKt;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;
import r3.j;
import r3.r;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final j f1173c = new j("StreamingFormatChecker", "");

    /* renamed from: a, reason: collision with root package name */
    public final LinkedList<Long> f1174a = new LinkedList<>();

    /* renamed from: b, reason: collision with root package name */
    public long f1175b = -1;

    public final void a(@RecentlyNonNull a8.a aVar) {
        if (aVar.f135g != -1) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        LinkedList<Long> linkedList = this.f1174a;
        linkedList.add(Long.valueOf(jElapsedRealtime));
        if (linkedList.size() > 5) {
            linkedList.removeFirst();
        }
        if (linkedList.size() == 5) {
            Long lPeekFirst = linkedList.peekFirst();
            r.i(lPeekFirst);
            if (jElapsedRealtime - lPeekFirst.longValue() < CoroutineLiveDataKt.DEFAULT_TIMEOUT) {
                long j10 = this.f1175b;
                if (j10 == -1 || jElapsedRealtime - j10 >= TimeUnit.SECONDS.toMillis(5L)) {
                    this.f1175b = jElapsedRealtime;
                    j jVar = f1173c;
                    if (Log.isLoggable(jVar.f13999a, 5)) {
                        String str = jVar.f14000b;
                        Log.w("StreamingFormatChecker", str != null ? str.concat("ML Kit has detected that you seem to pass camera frames to the detector as a Bitmap object. This is inefficient. Please use YUV_420_888 format for camera2 API or NV21 format for (legacy) camera API and directly pass down the byte array to ML Kit.") : "ML Kit has detected that you seem to pass camera frames to the detector as a Bitmap object. This is inefficient. Please use YUV_420_888 format for camera2 API or NV21 format for (legacy) camera API and directly pass down the byte array to ML Kit.");
                    }
                }
            }
        }
    }
}
