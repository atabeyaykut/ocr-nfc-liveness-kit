package androidx.camera.extensions.internal.sessionprocessor;

import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.extensions.impl.advanced.Camera2OutputConfigImpl;
import androidx.camera.extensions.impl.advanced.ImageReaderOutputConfigImpl;
import androidx.camera.extensions.impl.advanced.MultiResolutionImageReaderOutputConfigImpl;
import androidx.camera.extensions.impl.advanced.SurfaceOutputConfigImpl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@RequiresApi(21)
/* loaded from: classes.dex */
class Camera2OutputConfigBuilder {
    private static AtomicInteger sLastId = new AtomicInteger(0);
    private OutputConfig mOutputConfig;
    private String mPhysicalCameraId;
    private int mSurfaceGroupId;
    private List<Camera2OutputConfig> mSurfaceSharingConfigs;

    public static abstract class ImageReaderConfig extends OutputConfig implements ImageReaderOutputConfig {
        public static ImageReaderConfig create(@NonNull Size size, int r22, int r32) {
            return new AutoValue_Camera2OutputConfigBuilder_ImageReaderConfig(size, r22, r32);
        }

        public abstract int getImageFormat();

        public abstract int getMaxImages();

        @NonNull
        public abstract Size getSize();
    }

    public static abstract class MultiResolutionImageReaderConfig extends OutputConfig implements MultiResolutionImageReaderOutputConfig {
        public static MultiResolutionImageReaderConfig create(int r12, int r22) {
            return new AutoValue_Camera2OutputConfigBuilder_MultiResolutionImageReaderConfig(r12, r22);
        }

        public abstract int getImageFormat();

        public abstract int getMaxImages();
    }

    public static class OutputConfig implements Camera2OutputConfig {
        private int mId = -1;
        private int mSurfaceGroup = 0;
        private String mPhysicalCameraId = null;
        private List<Camera2OutputConfig> mSurfaceSharingConfigs = Collections.emptyList();

        @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfig
        public int getId() {
            return this.mId;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfig
        @Nullable
        public String getPhysicalCameraId() {
            return this.mPhysicalCameraId;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfig
        public int getSurfaceGroupId() {
            return this.mSurfaceGroup;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfig
        @NonNull
        public List<Camera2OutputConfig> getSurfaceSharingOutputConfigs() {
            return this.mSurfaceSharingConfigs;
        }

        public void setId(int r12) {
            this.mId = r12;
        }

        public void setPhysicalCameraId(@Nullable String str) {
            this.mPhysicalCameraId = str;
        }

        public void setSurfaceGroup(int r12) {
            this.mSurfaceGroup = r12;
        }

        public void setSurfaceSharingConfigs(@NonNull List<Camera2OutputConfig> list) {
            this.mSurfaceSharingConfigs = list;
        }
    }

    public static abstract class SurfaceConfig extends OutputConfig implements SurfaceOutputConfig {
        public static SurfaceConfig create(@NonNull Surface surface) {
            return new AutoValue_Camera2OutputConfigBuilder_SurfaceConfig(surface);
        }

        @NonNull
        public abstract Surface getSurface();
    }

    private Camera2OutputConfigBuilder(OutputConfig outputConfig) {
        this.mOutputConfig = outputConfig;
    }

    @NonNull
    public static Camera2OutputConfigBuilder fromImpl(@NonNull Camera2OutputConfigImpl camera2OutputConfigImpl) {
        OutputConfig outputConfigCreate;
        if (camera2OutputConfigImpl instanceof SurfaceOutputConfigImpl) {
            outputConfigCreate = SurfaceConfig.create(((SurfaceOutputConfigImpl) camera2OutputConfigImpl).getSurface());
        } else if (camera2OutputConfigImpl instanceof ImageReaderOutputConfigImpl) {
            ImageReaderOutputConfigImpl imageReaderOutputConfigImpl = (ImageReaderOutputConfigImpl) camera2OutputConfigImpl;
            outputConfigCreate = ImageReaderConfig.create(imageReaderOutputConfigImpl.getSize(), imageReaderOutputConfigImpl.getImageFormat(), imageReaderOutputConfigImpl.getMaxImages());
        } else if (camera2OutputConfigImpl instanceof MultiResolutionImageReaderOutputConfigImpl) {
            MultiResolutionImageReaderOutputConfigImpl multiResolutionImageReaderOutputConfigImpl = (MultiResolutionImageReaderOutputConfigImpl) camera2OutputConfigImpl;
            outputConfigCreate = MultiResolutionImageReaderConfig.create(multiResolutionImageReaderOutputConfigImpl.getImageFormat(), multiResolutionImageReaderOutputConfigImpl.getMaxImages());
        } else {
            outputConfigCreate = null;
        }
        outputConfigCreate.setPhysicalCameraId(camera2OutputConfigImpl.getPhysicalCameraId());
        outputConfigCreate.setSurfaceGroup(camera2OutputConfigImpl.getSurfaceGroupId());
        if (camera2OutputConfigImpl.getSurfaceSharingOutputConfigs() != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = camera2OutputConfigImpl.getSurfaceSharingOutputConfigs().iterator();
            while (it.hasNext()) {
                arrayList.add(fromImpl((Camera2OutputConfigImpl) it.next()).build());
            }
            outputConfigCreate.setSurfaceSharingConfigs(arrayList);
        }
        return new Camera2OutputConfigBuilder(outputConfigCreate);
    }

    private int getNextId() {
        return sLastId.getAndIncrement();
    }

    @NonNull
    public static Camera2OutputConfigBuilder newImageReaderConfig(@NonNull Size size, int r22, int r32) {
        return new Camera2OutputConfigBuilder(ImageReaderConfig.create(size, r22, r32));
    }

    @NonNull
    public static Camera2OutputConfigBuilder newMultiResolutionImageReaderConfig(int r12, int r22) {
        return new Camera2OutputConfigBuilder(MultiResolutionImageReaderConfig.create(r12, r22));
    }

    @NonNull
    public static Camera2OutputConfigBuilder newSurfaceConfig(@NonNull Surface surface) {
        return new Camera2OutputConfigBuilder(SurfaceConfig.create(surface));
    }

    @NonNull
    public Camera2OutputConfigBuilder addSurfaceSharingOutputConfig(@NonNull Camera2OutputConfig camera2OutputConfig) {
        if (this.mSurfaceSharingConfigs == null) {
            this.mSurfaceSharingConfigs = new ArrayList();
        }
        this.mSurfaceSharingConfigs.add(camera2OutputConfig);
        return this;
    }

    @NonNull
    public Camera2OutputConfig build() {
        this.mOutputConfig.setId(getNextId());
        this.mOutputConfig.setPhysicalCameraId(this.mPhysicalCameraId);
        this.mOutputConfig.setSurfaceGroup(this.mSurfaceGroupId);
        List<Camera2OutputConfig> list = this.mSurfaceSharingConfigs;
        if (list != null) {
            this.mOutputConfig.setSurfaceSharingConfigs(list);
        }
        return this.mOutputConfig;
    }

    @NonNull
    public Camera2OutputConfigBuilder setPhysicalCameraId(@NonNull String str) {
        this.mPhysicalCameraId = str;
        return this;
    }

    @NonNull
    public Camera2OutputConfigBuilder setSurfaceGroupId(int r12) {
        this.mSurfaceGroupId = r12;
        return this;
    }
}
