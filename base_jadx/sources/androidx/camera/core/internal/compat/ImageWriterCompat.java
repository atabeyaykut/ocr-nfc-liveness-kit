package androidx.camera.core.internal.compat;

import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.view.Surface;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.a;

@RequiresApi(23)
/* loaded from: classes.dex */
public final class ImageWriterCompat {
    private ImageWriterCompat() {
    }

    public static void close(@NonNull ImageWriter imageWriter) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 < 23) {
            throw new RuntimeException(a.f("Unable to call close() on API ", r02, ". Version 23 or higher required."));
        }
        ImageWriterCompatApi23Impl.close(imageWriter);
    }

    @NonNull
    public static Image dequeueInputImage(@NonNull ImageWriter imageWriter) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 >= 23) {
            return ImageWriterCompatApi23Impl.dequeueInputImage(imageWriter);
        }
        throw new RuntimeException(a.f("Unable to call dequeueInputImage() on API ", r02, ". Version 23 or higher required."));
    }

    @NonNull
    public static ImageWriter newInstance(@NonNull Surface surface, @IntRange(from = 1) int r32) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 >= 23) {
            return ImageWriterCompatApi23Impl.newInstance(surface, r32);
        }
        throw new RuntimeException(a.f("Unable to call newInstance(Surface, int) on API ", r02, ". Version 23 or higher required."));
    }

    public static void queueInputImage(@NonNull ImageWriter imageWriter, @NonNull Image image) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 < 23) {
            throw new RuntimeException(a.f("Unable to call queueInputImage() on API ", r02, ". Version 23 or higher required."));
        }
        ImageWriterCompatApi23Impl.queueInputImage(imageWriter, image);
    }

    @NonNull
    public static ImageWriter newInstance(@NonNull Surface surface, @IntRange(from = 1) int r32, int r42) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 >= 29) {
            return ImageWriterCompatApi29Impl.newInstance(surface, r32, r42);
        }
        if (r02 >= 26) {
            return ImageWriterCompatApi26Impl.newInstance(surface, r32, r42);
        }
        throw new RuntimeException(a.f("Unable to call newInstance(Surface, int, int) on API ", r02, ". Version 26 or higher required."));
    }
}
