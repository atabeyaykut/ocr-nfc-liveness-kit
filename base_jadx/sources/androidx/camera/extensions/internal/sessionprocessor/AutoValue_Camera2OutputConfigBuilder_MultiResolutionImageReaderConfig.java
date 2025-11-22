package androidx.camera.extensions.internal.sessionprocessor;

import androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfigBuilder;

/* loaded from: classes.dex */
final class AutoValue_Camera2OutputConfigBuilder_MultiResolutionImageReaderConfig extends Camera2OutputConfigBuilder.MultiResolutionImageReaderConfig {
    private final int imageFormat;
    private final int maxImages;

    public AutoValue_Camera2OutputConfigBuilder_MultiResolutionImageReaderConfig(int r12, int r22) {
        this.imageFormat = r12;
        this.maxImages = r22;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Camera2OutputConfigBuilder.MultiResolutionImageReaderConfig)) {
            return false;
        }
        Camera2OutputConfigBuilder.MultiResolutionImageReaderConfig multiResolutionImageReaderConfig = (Camera2OutputConfigBuilder.MultiResolutionImageReaderConfig) obj;
        return this.imageFormat == multiResolutionImageReaderConfig.getImageFormat() && this.maxImages == multiResolutionImageReaderConfig.getMaxImages();
    }

    @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfigBuilder.MultiResolutionImageReaderConfig, androidx.camera.extensions.internal.sessionprocessor.MultiResolutionImageReaderOutputConfig
    public int getImageFormat() {
        return this.imageFormat;
    }

    @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfigBuilder.MultiResolutionImageReaderConfig, androidx.camera.extensions.internal.sessionprocessor.MultiResolutionImageReaderOutputConfig
    public int getMaxImages() {
        return this.maxImages;
    }

    public int hashCode() {
        return ((this.imageFormat ^ 1000003) * 1000003) ^ this.maxImages;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("MultiResolutionImageReaderConfig{imageFormat=");
        sb2.append(this.imageFormat);
        sb2.append(", maxImages=");
        return androidx.browser.browseractions.a.b(sb2, this.maxImages, "}");
    }
}
