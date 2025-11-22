package androidx.camera.core;

import android.media.ImageReader;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.camera.core.impl.ImageReaderProxy;

@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ImageReaderProxys {
    private ImageReaderProxys() {
    }

    @NonNull
    public static ImageReaderProxy createIsolatedReader(int r02, int r12, int r22, int r32) {
        return new AndroidImageReaderProxy(ImageReader.newInstance(r02, r12, r22, r32));
    }
}
