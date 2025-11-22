package androidx.camera.core.impl;

import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface CaptureProcessor {
    void close();

    @NonNull
    m5.a<Void> getCloseFuture();

    void onOutputSurface(Surface surface, int r22);

    void onResolutionUpdate(Size size);

    void process(ImageProxyBundle imageProxyBundle);
}
