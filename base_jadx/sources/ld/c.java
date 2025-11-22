package ld;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
public final class c extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f9776a;

    public c(b bVar) {
        this.f9776a = bVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        id.b.f("CycledLeScanner", "User switch detected.  Cancelling alarm to prevent potential crash.", new Object[0]);
        this.f9776a.a();
    }
}
