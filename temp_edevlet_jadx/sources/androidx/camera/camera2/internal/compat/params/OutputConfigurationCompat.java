package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.camera.camera2.internal.compat.ApiCompat;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class OutputConfigurationCompat {
    public static final int SURFACE_GROUP_ID_NONE = -1;
    private final OutputConfigurationCompatImpl mImpl;

    public interface OutputConfigurationCompatImpl {
        void addSurface(@NonNull Surface surface);

        void enableSurfaceSharing();

        int getMaxSharedSurfaceCount();

        @Nullable
        Object getOutputConfiguration();

        @Nullable
        String getPhysicalCameraId();

        @Nullable
        Surface getSurface();

        int getSurfaceGroupId();

        List<Surface> getSurfaces();

        void removeSurface(@NonNull Surface surface);

        void setPhysicalCameraId(@Nullable String str);
    }

    @RequiresApi(26)
    public <T> OutputConfigurationCompat(@NonNull Size size, @NonNull Class<T> cls) {
        OutputConfiguration outputConfigurationNewOutputConfiguration = ApiCompat.Api26Impl.newOutputConfiguration(size, cls);
        this.mImpl = Build.VERSION.SDK_INT >= 28 ? OutputConfigurationCompatApi28Impl.wrap(outputConfigurationNewOutputConfiguration) : OutputConfigurationCompatApi26Impl.wrap(outputConfigurationNewOutputConfiguration);
    }

    public OutputConfigurationCompat(@NonNull Surface surface) {
        int r02 = Build.VERSION.SDK_INT;
        this.mImpl = r02 >= 28 ? new OutputConfigurationCompatApi28Impl(surface) : r02 >= 26 ? new OutputConfigurationCompatApi26Impl(surface) : r02 >= 24 ? new OutputConfigurationCompatApi24Impl(surface) : new OutputConfigurationCompatBaseImpl(surface);
    }

    private OutputConfigurationCompat(@NonNull OutputConfigurationCompatImpl outputConfigurationCompatImpl) {
        this.mImpl = outputConfigurationCompatImpl;
    }

    @Nullable
    public static OutputConfigurationCompat wrap(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int r12 = Build.VERSION.SDK_INT;
        OutputConfigurationCompatImpl outputConfigurationCompatImplWrap = r12 >= 28 ? OutputConfigurationCompatApi28Impl.wrap((OutputConfiguration) obj) : r12 >= 26 ? OutputConfigurationCompatApi26Impl.wrap((OutputConfiguration) obj) : r12 >= 24 ? OutputConfigurationCompatApi24Impl.wrap((OutputConfiguration) obj) : null;
        if (outputConfigurationCompatImplWrap == null) {
            return null;
        }
        return new OutputConfigurationCompat(outputConfigurationCompatImplWrap);
    }

    public void addSurface(@NonNull Surface surface) {
        this.mImpl.addSurface(surface);
    }

    public void enableSurfaceSharing() {
        this.mImpl.enableSurfaceSharing();
    }

    public boolean equals(Object obj) {
        if (obj instanceof OutputConfigurationCompat) {
            return this.mImpl.equals(((OutputConfigurationCompat) obj).mImpl);
        }
        return false;
    }

    public int getMaxSharedSurfaceCount() {
        return this.mImpl.getMaxSharedSurfaceCount();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String getPhysicalCameraId() {
        return this.mImpl.getPhysicalCameraId();
    }

    @Nullable
    public Surface getSurface() {
        return this.mImpl.getSurface();
    }

    public int getSurfaceGroupId() {
        return this.mImpl.getSurfaceGroupId();
    }

    @NonNull
    public List<Surface> getSurfaces() {
        return this.mImpl.getSurfaces();
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }

    public void removeSurface(@NonNull Surface surface) {
        this.mImpl.removeSurface(surface);
    }

    public void setPhysicalCameraId(@Nullable String str) {
        this.mImpl.setPhysicalCameraId(str);
    }

    @Nullable
    public Object unwrap() {
        return this.mImpl.getOutputConfiguration();
    }
}
