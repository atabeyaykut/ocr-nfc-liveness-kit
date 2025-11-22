package androidx.camera.extensions.internal.sessionprocessor;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfigBuilder;

/* loaded from: classes.dex */
final class AutoValue_Camera2OutputConfigBuilder_ImageReaderConfig extends Camera2OutputConfigBuilder.ImageReaderConfig {
    private final int imageFormat;
    private final int maxImages;
    private final Size size;

    public AutoValue_Camera2OutputConfigBuilder_ImageReaderConfig(Size size, int r22, int r32) {
        if (size == null) {
            throw new NullPointerException("Null size");
        }
        this.size = size;
        this.imageFormat = r22;
        this.maxImages = r32;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Camera2OutputConfigBuilder.ImageReaderConfig)) {
            return false;
        }
        Camera2OutputConfigBuilder.ImageReaderConfig imageReaderConfig = (Camera2OutputConfigBuilder.ImageReaderConfig) obj;
        return this.size.equals(imageReaderConfig.getSize()) && this.imageFormat == imageReaderConfig.getImageFormat() && this.maxImages == imageReaderConfig.getMaxImages();
    }

    @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfigBuilder.ImageReaderConfig, androidx.camera.extensions.internal.sessionprocessor.ImageReaderOutputConfig
    public int getImageFormat() {
        return this.imageFormat;
    }

    @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfigBuilder.ImageReaderConfig, androidx.camera.extensions.internal.sessionprocessor.ImageReaderOutputConfig
    public int getMaxImages() {
        return this.maxImages;
    }

    @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2OutputConfigBuilder.ImageReaderConfig, androidx.camera.extensions.internal.sessionprocessor.ImageReaderOutputConfig
    @NonNull
    public Size getSize() {
        return this.size;
    }

    public int hashCode() {
        return ((((this.size.hashCode() ^ 1000003) * 1000003) ^ this.imageFormat) * 1000003) ^ this.maxImages;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ImageReaderConfig{size=");
        sb2.append(this.size);
        sb2.append(", imageFormat=");
        sb2.append(this.imageFormat);
        sb2.append(", maxImages=");
        return androidx.browser.browseractions.a.b(sb2, this.maxImages, "}");
    }
}
