package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import g7.c0;
import g7.m;
import h5.n;
import java.util.concurrent.ExecutionException;
import l3.a;
import l3.b;

/* loaded from: classes2.dex */
public final class FirebaseInstanceIdReceiver extends b {
    @Override // l3.b
    @WorkerThread
    public final int a(@NonNull Context context, @NonNull a aVar) {
        try {
            return ((Integer) n.a(new m(context).b(aVar.f9337a))).intValue();
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e10);
            return 500;
        }
    }

    @Override // l3.b
    @WorkerThread
    public final void b(@NonNull Bundle bundle) {
        Intent intentPutExtras = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(bundle);
        if (c0.b(intentPutExtras)) {
            c0.a(intentPutExtras.getExtras(), "_nd");
        }
    }
}
