package l3;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9382a;

    /* renamed from: b, reason: collision with root package name */
    public int f9383b;

    /* renamed from: c, reason: collision with root package name */
    public int f9384c = 0;

    public v(Context context) {
        this.f9382a = context;
    }

    public final synchronized int a() {
        int r02 = this.f9384c;
        if (r02 != 0) {
            return r02;
        }
        PackageManager packageManager = this.f9382a.getPackageManager();
        if (y3.c.a(this.f9382a).f19314a.getPackageManager().checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("Metadata", "Google Play services missing or without correct permission.");
            return 0;
        }
        int r22 = 1;
        if (!w3.d.a()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f9384c = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f9384c = 2;
            return 2;
        }
        Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
        if (w3.d.a()) {
            this.f9384c = 2;
            r22 = 2;
        } else {
            this.f9384c = 1;
        }
        return r22;
    }
}
