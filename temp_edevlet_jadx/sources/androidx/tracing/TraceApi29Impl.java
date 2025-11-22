package androidx.tracing;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(29)
/* loaded from: classes.dex */
final class TraceApi29Impl {
    private TraceApi29Impl() {
    }

    public static void beginAsyncSection(@NonNull String str, int r12) {
        android.os.Trace.beginAsyncSection(str, r12);
    }

    public static void endAsyncSection(@NonNull String str, int r12) {
        android.os.Trace.endAsyncSection(str, r12);
    }

    public static void setCounter(@NonNull String str, int r32) {
        android.os.Trace.setCounter(str, r32);
    }
}
