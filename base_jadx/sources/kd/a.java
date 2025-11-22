package kd;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import c5.e0;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class a implements Serializable {
    public static void a(Context context, String str, Bundle bundle) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context.getPackageName(), "org.altbeacon.beacon.BeaconIntentProcessor"));
        intent.putExtra(str, bundle);
        if (!gd.e.g(context).j()) {
            id.b.a("Callback", "attempting callback via direct method call", new Object[0]);
            new e0();
            e0.e(context, intent);
            return;
        }
        id.b.a("Callback", "attempting callback via global broadcast intent: %s", intent.getComponent());
        try {
            context.startService(intent);
        } catch (Exception e10) {
            id.b.c("Callback", "Failed attempting to start service: " + intent.getComponent().flattenToString(), e10);
        }
    }
}
