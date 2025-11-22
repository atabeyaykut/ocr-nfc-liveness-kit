package androidx.camera.core.impl;

import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.utils.futures.Futures;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class ImmediateSurface extends DeferrableSurface {
    private final Surface mSurface;

    public ImmediateSurface(@NonNull Surface surface) {
        this.mSurface = surface;
    }

    public ImmediateSurface(@NonNull Surface surface, @NonNull Size size, int r32) {
        super(size, r32);
        this.mSurface = surface;
    }

    @Override // androidx.camera.core.impl.DeferrableSurface
    @NonNull
    public m5.a<Surface> provideSurface() {
        return Futures.immediateFuture(this.mSurface);
    }
}
