package androidx.media;

import android.media.VolumeProvider;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class VolumeProviderCompatApi21 {

    public interface Delegate {
        void onAdjustVolume(int r12);

        void onSetVolumeTo(int r12);
    }

    private VolumeProviderCompatApi21() {
    }

    public static Object createVolumeProvider(int r12, int r22, int r32, final Delegate delegate) {
        return new VolumeProvider(r12, r22, r32) { // from class: androidx.media.VolumeProviderCompatApi21.1
            @Override // android.media.VolumeProvider
            public void onAdjustVolume(int r23) {
                delegate.onAdjustVolume(r23);
            }

            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(int r23) {
                delegate.onSetVolumeTo(r23);
            }
        };
    }

    public static void setCurrentVolume(Object obj, int r12) {
        ((VolumeProvider) obj).setCurrentVolume(r12);
    }
}
