package com.airbnb.epoxy;

import java.util.Arrays;

/* loaded from: classes.dex */
public class c0 extends RuntimeException {
    public /* synthetic */ c0() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public /* synthetic */ c0(String str) {
        super(str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c0(String[] strArr, String str, String[] strArr2) {
        StringBuilder sbL = android.support.v4.media.a.l("Could not find '", str, "'. Looked for: ");
        sbL.append(Arrays.toString(strArr));
        sbL.append(", but only found: ");
        super(androidx.camera.camera2.internal.c.h(sbL, Arrays.toString(strArr2), "."));
    }
}
