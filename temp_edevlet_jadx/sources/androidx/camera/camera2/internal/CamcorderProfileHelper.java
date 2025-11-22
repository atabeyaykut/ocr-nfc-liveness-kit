package androidx.camera.camera2.internal;

import android.media.CamcorderProfile;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
interface CamcorderProfileHelper {
    CamcorderProfile get(int r12, int r22);

    boolean hasProfile(int r12, int r22);
}
