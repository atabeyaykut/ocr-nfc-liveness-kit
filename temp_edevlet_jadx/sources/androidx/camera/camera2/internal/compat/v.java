package androidx.camera.camera2.internal.compat;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;

/* loaded from: classes.dex */
public final /* synthetic */ class v {
    @NonNull
    public static CameraManagerCompat.CameraManagerCompatImpl a(@NonNull Context context, @NonNull Handler handler) {
        int r02 = Build.VERSION.SDK_INT;
        return r02 >= 29 ? new CameraManagerCompatApi29Impl(context) : r02 >= 28 ? CameraManagerCompatApi28Impl.create(context) : CameraManagerCompatBaseImpl.create(context, handler);
    }
}
