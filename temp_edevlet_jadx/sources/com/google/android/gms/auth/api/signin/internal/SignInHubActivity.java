package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import j3.n;
import j3.t;

@KeepName
/* loaded from: classes.dex */
public class SignInHubActivity extends FragmentActivity {
    public static boolean f = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2965a = false;

    /* renamed from: b, reason: collision with root package name */
    public SignInConfiguration f2966b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2967c;

    /* renamed from: d, reason: collision with root package name */
    public int f2968d;

    /* renamed from: e, reason: collision with root package name */
    public Intent f2969e;

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(@RecentlyNonNull AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    public final void onActivityResult(int r52, int r6, @Nullable Intent intent) {
        GoogleSignInAccount googleSignInAccount;
        if (this.f2965a) {
            return;
        }
        setResult(0);
        if (r52 != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && (googleSignInAccount = signInAccount.f2961b) != null) {
                n nVarA = n.a(this);
                GoogleSignInOptions googleSignInOptions = this.f2966b.f2964b;
                synchronized (nVarA) {
                    nVarA.f7994a.d(googleSignInAccount, googleSignInOptions);
                }
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", googleSignInAccount);
                this.f2967c = true;
                this.f2968d = r6;
                this.f2969e = intent;
                getSupportLoaderManager().initLoader(0, null, new t(this));
                f = false;
                return;
            }
            if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                if (intExtra == 13) {
                    intExtra = 12501;
                }
                s(intExtra);
                return;
            }
        }
        s(8);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        action.getClass();
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            s(12500);
            return;
        }
        if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String strValueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", strValueOf.length() != 0 ? "Unknown action: ".concat(strValueOf) : new String("Unknown action: "));
            finish();
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra("config");
        bundleExtra.getClass();
        SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
        if (signInConfiguration == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
            return;
        }
        this.f2966b = signInConfiguration;
        if (bundle != null) {
            boolean z10 = bundle.getBoolean("signingInGoogleApiClients");
            this.f2967c = z10;
            if (z10) {
                this.f2968d = bundle.getInt("signInResultCode");
                Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
                intent2.getClass();
                this.f2969e = intent2;
                getSupportLoaderManager().initLoader(0, null, new t(this));
                f = false;
                return;
            }
            return;
        }
        if (f) {
            setResult(0);
            s(12502);
            return;
        }
        f = true;
        Intent intent3 = new Intent(action);
        intent3.setPackage(action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") ? "com.google.android.gms" : getPackageName());
        intent3.putExtra("config", this.f2966b);
        try {
            startActivityForResult(intent3, 40962);
        } catch (ActivityNotFoundException unused) {
            this.f2965a = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            s(17);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        f = false;
    }

    @Override // androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f2967c);
        if (this.f2967c) {
            bundle.putInt("signInResultCode", this.f2968d);
            bundle.putParcelable("signInResultData", this.f2969e);
        }
    }

    public final void s(int r32) {
        Status status = new Status(r32, null);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f = false;
    }
}
