package androidx.camera.core.impl;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface CamcorderProfileProvider {
    public static final CamcorderProfileProvider EMPTY = new CamcorderProfileProvider() { // from class: androidx.camera.core.impl.CamcorderProfileProvider.1
        @Override // androidx.camera.core.impl.CamcorderProfileProvider
        @Nullable
        public CamcorderProfileProxy get(int r12) {
            return null;
        }

        @Override // androidx.camera.core.impl.CamcorderProfileProvider
        public boolean hasProfile(int r12) {
            return false;
        }
    };

    @Nullable
    CamcorderProfileProxy get(int r12);

    boolean hasProfile(int r12);
}
