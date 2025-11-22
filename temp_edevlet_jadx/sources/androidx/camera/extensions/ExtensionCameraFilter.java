package androidx.camera.extensions;

import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Identifier;
import androidx.camera.extensions.internal.VendorExtender;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ExtensionCameraFilter implements CameraFilter {
    private final Identifier mId;
    private final VendorExtender mVendorExtender;

    public ExtensionCameraFilter(@NonNull String str, @NonNull VendorExtender vendorExtender) {
        this.mId = Identifier.create(str);
        this.mVendorExtender = vendorExtender;
    }

    @Override // androidx.camera.core.CameraFilter
    @NonNull
    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public List<CameraInfo> filter(@NonNull List<CameraInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (CameraInfo cameraInfo : list) {
            Preconditions.checkArgument(cameraInfo instanceof CameraInfoInternal, "The camera info doesn't contain internal implementation.");
            if (this.mVendorExtender.isExtensionAvailable(Camera2CameraInfo.from(cameraInfo).getCameraId(), Camera2CameraInfo.from(cameraInfo).getCameraCharacteristicsMap())) {
                arrayList.add(cameraInfo);
            }
        }
        return arrayList;
    }

    @Override // androidx.camera.core.CameraFilter
    @NonNull
    public Identifier getIdentifier() {
        return this.mId;
    }
}
