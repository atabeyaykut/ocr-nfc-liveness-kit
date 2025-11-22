package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.a;
import com.google.android.gms.common.annotation.KeepName;
import h4.i;
import m3.b;
import m3.e;
import o3.d;
import r3.r;

@KeepName
/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f2970b = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f2971a = 0;

    @Override // android.app.Activity
    public final void onActivityResult(int r42, int r52, @NonNull Intent intent) {
        super.onActivityResult(r42, r52, intent);
        if (r42 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f2971a = 0;
            setResult(r52, intent);
            if (booleanExtra) {
                d dVarE = d.e(this);
                if (r52 == -1) {
                    i iVar = dVarE.f11113n;
                    iVar.sendMessage(iVar.obtainMessage(3));
                } else if (r52 == 0) {
                    dVarE.f(new b(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (r42 == 2) {
            this.f2971a = 0;
            setResult(r52, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        this.f2971a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) throws IntentSender.SendIntentException {
        String str;
        super.onCreate(bundle);
        if (bundle != null) {
            this.f2971a = bundle.getInt("resolution");
        }
        if (this.f2971a != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                str = "Activity started without extras";
            } else {
                PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
                Integer num = (Integer) extras.get("error_code");
                if (pendingIntent == null && num == null) {
                    str = "Activity started without resolution";
                } else {
                    if (pendingIntent == null) {
                        r.i(num);
                        e.f9944d.d(this, num.intValue(), this);
                        this.f2971a = 1;
                        return;
                    }
                    try {
                        startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                        this.f2971a = 1;
                        return;
                    } catch (ActivityNotFoundException e10) {
                        if (extras.getBoolean("notify_manager", true)) {
                            d.e(this).f(new b(22, null), getIntent().getIntExtra("failing_client_id", -1));
                        } else {
                            String strA = a.a("Activity not found while launching ", pendingIntent.toString(), ".");
                            if (Build.FINGERPRINT.contains("generic")) {
                                strA = strA.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                            }
                            Log.e("GoogleApiActivity", strA, e10);
                        }
                        this.f2971a = 1;
                    } catch (IntentSender.SendIntentException e11) {
                        Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e11);
                    }
                }
            }
            Log.e("GoogleApiActivity", str);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putInt("resolution", this.f2971a);
        super.onSaveInstanceState(bundle);
    }
}
