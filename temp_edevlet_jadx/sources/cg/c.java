package cg;

import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;

/* loaded from: classes3.dex */
public final class c extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        yd.a.f19652a.c("Permission Request", new Object[0]);
        super.onPermissionRequest(permissionRequest);
    }
}
