package org.altbeacon.beacon;

import android.app.IntentService;
import android.content.Intent;
import c5.e0;

/* loaded from: classes2.dex */
public class BeaconIntentProcessor extends IntentService {
    public BeaconIntentProcessor() {
        super("BeaconIntentProcessor");
    }

    @Override // android.app.IntentService
    public final void onHandleIntent(Intent intent) {
        new e0();
        e0.e(getApplicationContext(), intent);
    }
}
