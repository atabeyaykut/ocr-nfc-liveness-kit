package l3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import c5.a8;
import c5.e3;
import c5.i4;
import c5.r2;
import c5.t5;
import c5.v5;
import c5.v7;
import c5.z4;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9350a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f9351b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f9352c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f9353d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f9354e;
    public final /* synthetic */ Object f;

    public i(t5 t5Var, boolean z10, Uri uri, String str, String str2) {
        this.f = t5Var;
        this.f9351b = z10;
        this.f9352c = uri;
        this.f9353d = str;
        this.f9354e = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundleM0;
        int r22 = this.f9350a;
        boolean z10 = this.f9351b;
        Object obj = this.f;
        Object obj2 = this.f9354e;
        Object obj3 = this.f9353d;
        Object obj4 = this.f9352c;
        switch (r22) {
            case 0:
                b bVar = (b) obj4;
                Intent intent = (Intent) obj3;
                Context context = (Context) obj2;
                BroadcastReceiver.PendingResult pendingResult = (BroadcastReceiver.PendingResult) obj;
                bVar.getClass();
                try {
                    Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
                    Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
                    int r02 = intent2 != null ? bVar.d(context, intent2) : bVar.c(context, intent);
                    if (z10) {
                        pendingResult.setResultCode(r02);
                    }
                    return;
                } finally {
                    pendingResult.finish();
                }
            default:
                Uri uri = (Uri) obj4;
                String str = (String) obj3;
                String str2 = (String) obj2;
                v5 v5Var = ((t5) obj).f2001a;
                v5Var.b();
                z4 z4Var = v5Var.f2115a;
                try {
                    v7 v7Var = ((i4) z4Var).f1638m;
                    i4.c(v7Var);
                    if (TextUtils.isEmpty(str2)) {
                        bundleM0 = null;
                    } else if (str2.contains("gclid") || str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium")) {
                        bundleM0 = v7Var.m0(Uri.parse(str2.length() != 0 ? "https://google.com/search?".concat(str2) : new String("https://google.com/search?")));
                        if (bundleM0 != null) {
                            bundleM0.putString("_cis", "referrer");
                        }
                    } else {
                        e3 e3Var = ((i4) v7Var.f2115a).f1635j;
                        i4.e(e3Var);
                        e3Var.f1512n.a("Activity created with data 'referrer' without required params");
                        bundleM0 = null;
                    }
                    a8 a8Var = v5Var.f2070p;
                    if (z10) {
                        v7 v7Var2 = ((i4) z4Var).f1638m;
                        i4.c(v7Var2);
                        Bundle bundleM02 = v7Var2.m0(uri);
                        if (bundleM02 != null) {
                            bundleM02.putString("_cis", "intent");
                            if (!bundleM02.containsKey("gclid") && bundleM0 != null && bundleM0.containsKey("gclid")) {
                                bundleM02.putString("_cer", String.format("gclid=%s", bundleM0.getString("gclid")));
                            }
                            v5Var.n(str, "_cmp", bundleM02);
                            a8Var.a(bundleM02, str);
                        }
                    }
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    e3 e3Var2 = ((i4) z4Var).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f1512n.b(str2, "Activity created with referrer");
                    if (((i4) z4Var).f1633g.p(null, r2.f1890a0)) {
                        if (bundleM0 != null) {
                            v5Var.n(str, "_cmp", bundleM0);
                            a8Var.a(bundleM0, str);
                        } else {
                            e3 e3Var3 = ((i4) z4Var).f1635j;
                            i4.e(e3Var3);
                            e3Var3.f1512n.b(str2, "Referrer does not contain valid parameters");
                        }
                        ((i4) z4Var).f1640p.getClass();
                        v5Var.v("auto", "_ldl", null, true, System.currentTimeMillis());
                        return;
                    }
                    if (!str2.contains("gclid") || (!str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_term") && !str2.contains("utm_content"))) {
                        e3 e3Var4 = ((i4) z4Var).f1635j;
                        i4.e(e3Var4);
                        e3Var4.f1512n.a("Activity created with data 'referrer' without required params");
                        return;
                    } else {
                        if (TextUtils.isEmpty(str2)) {
                            return;
                        }
                        ((i4) z4Var).f1640p.getClass();
                        v5Var.v("auto", "_ldl", str2, true, System.currentTimeMillis());
                        return;
                    }
                } catch (RuntimeException e10) {
                    e3 e3Var5 = ((i4) z4Var).f1635j;
                    i4.e(e3Var5);
                    e3Var5.f.b(e10, "Throwable caught in handleReferrerForOnActivityCreated");
                    return;
                }
        }
    }

    public /* synthetic */ i(b bVar, Intent intent, Context context, boolean z10, BroadcastReceiver.PendingResult pendingResult) {
        this.f9352c = bVar;
        this.f9353d = intent;
        this.f9354e = context;
        this.f9351b = z10;
        this.f = pendingResult;
    }
}
