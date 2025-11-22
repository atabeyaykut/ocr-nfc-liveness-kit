package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
final class AutoValue_AttachedSurfaceInfo extends AttachedSurfaceInfo {
    private final int imageFormat;
    private final Size size;
    private final SurfaceConfig surfaceConfig;
    private final Range<Integer> targetFrameRate;

    public AutoValue_AttachedSurfaceInfo(SurfaceConfig surfaceConfig, int r22, Size size, @Nullable Range<Integer> range) {
        if (surfaceConfig == null) {
            throw new NullPointerException("Null surfaceConfig");
        }
        this.surfaceConfig = surfaceConfig;
        this.imageFormat = r22;
        if (size == null) {
            throw new NullPointerException("Null size");
        }
        this.size = size;
        this.targetFrameRate = range;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AttachedSurfaceInfo)) {
            return false;
        }
        AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) obj;
        if (this.surfaceConfig.equals(attachedSurfaceInfo.getSurfaceConfig()) && this.imageFormat == attachedSurfaceInfo.getImageFormat() && this.size.equals(attachedSurfaceInfo.getSize())) {
            Range<Integer> range = this.targetFrameRate;
            Range<Integer> targetFrameRate = attachedSurfaceInfo.getTargetFrameRate();
            if (range == null) {
                if (targetFrameRate == null) {
                    return true;
                }
            } else if (range.equals(targetFrameRate)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public int getImageFormat() {
        return this.imageFormat;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @NonNull
    public Size getSize() {
        return this.size;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @NonNull
    public SurfaceConfig getSurfaceConfig() {
        return this.surfaceConfig;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @Nullable
    public Range<Integer> getTargetFrameRate() {
        return this.targetFrameRate;
    }

    public int hashCode() {
        int r02 = (((((this.surfaceConfig.hashCode() ^ 1000003) * 1000003) ^ this.imageFormat) * 1000003) ^ this.size.hashCode()) * 1000003;
        Range<Integer> range = this.targetFrameRate;
        return r02 ^ (range == null ? 0 : range.hashCode());
    }

    public String toString() {
        return "AttachedSurfaceInfo{surfaceConfig=" + this.surfaceConfig + ", imageFormat=" + this.imageFormat + ", size=" + this.size + ", targetFrameRate=" + this.targetFrameRate + "}";
    }
}
