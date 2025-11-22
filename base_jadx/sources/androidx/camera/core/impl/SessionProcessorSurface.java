package androidx.camera.core.impl;

import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.utils.futures.Futures;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class SessionProcessorSurface extends DeferrableSurface {
    private final int mOutputConfigId;
    private final Surface mSurface;

    public SessionProcessorSurface(@NonNull Surface surface, int r22) {
        this.mSurface = surface;
        this.mOutputConfigId = r22;
    }

    public int getOutputConfigId() {
        return this.mOutputConfigId;
    }

    @Override // androidx.camera.core.impl.DeferrableSurface
    @NonNull
    public m5.a<Surface> provideSurface() {
        return Futures.immediateFuture(this.mSurface);
    }
}
