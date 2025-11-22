package androidx.camera.core.internal.compat.workaround;

import android.media.MediaCodec;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.Preview;
import androidx.camera.core.VideoCapture;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.SurfaceOrderQuirk;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
public class SurfaceSorter {
    private static final int PRIORITY_MEDIA_CODEC_SURFACE = 2;
    private static final int PRIORITY_OTHERS = 1;
    private static final int PRIORITY_PREVIEW_SURFACE = 0;
    private final boolean mHasQuirk;

    public SurfaceSorter() {
        this.mHasQuirk = DeviceQuirks.get(SurfaceOrderQuirk.class) != null;
    }

    private int getSurfacePriority(@NonNull DeferrableSurface deferrableSurface) {
        if (deferrableSurface.getContainerClass() == MediaCodec.class || deferrableSurface.getContainerClass() == VideoCapture.class) {
            return 2;
        }
        return deferrableSurface.getContainerClass() == Preview.class ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$sort$0(DeferrableSurface deferrableSurface, DeferrableSurface deferrableSurface2) {
        return getSurfacePriority(deferrableSurface) - getSurfacePriority(deferrableSurface2);
    }

    public void sort(@NonNull List<DeferrableSurface> list) {
        if (this.mHasQuirk) {
            Collections.sort(list, new Comparator() { // from class: androidx.camera.core.internal.compat.workaround.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f747a.lambda$sort$0((DeferrableSurface) obj, (DeferrableSurface) obj2);
                }
            });
        }
    }
}
