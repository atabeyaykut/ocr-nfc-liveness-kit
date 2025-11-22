package r3;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class f1 {

    /* renamed from: e, reason: collision with root package name */
    public static final Uri f13962e = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f13963a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13964b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13965c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f13966d;

    public f1(String str, String str2, boolean z10, int r42) {
        r.f(str);
        this.f13963a = str;
        r.f(str2);
        this.f13964b = str2;
        this.f13965c = r42;
        this.f13966d = z10;
    }

    public final Intent a(Context context) {
        Bundle bundleCall;
        String str = this.f13963a;
        if (str == null) {
            return new Intent().setComponent(null);
        }
        if (this.f13966d) {
            Bundle bundle = new Bundle();
            bundle.putString("serviceActionBundleKey", str);
            try {
                bundleCall = context.getContentResolver().call(f13962e, "serviceIntentCall", (String) null, bundle);
            } catch (IllegalArgumentException e10) {
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e10.toString()));
                bundleCall = null;
            }
            intent = bundleCall != null ? (Intent) bundleCall.getParcelable("serviceResponseIntentKey") : null;
            if (intent == null) {
                Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(str)));
            }
        }
        return intent != null ? intent : new Intent(str).setPackage(this.f13964b);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f1)) {
            return false;
        }
        f1 f1Var = (f1) obj;
        return p.a(this.f13963a, f1Var.f13963a) && p.a(this.f13964b, f1Var.f13964b) && p.a(null, null) && this.f13965c == f1Var.f13965c && this.f13966d == f1Var.f13966d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f13963a, this.f13964b, null, Integer.valueOf(this.f13965c), Boolean.valueOf(this.f13966d)});
    }

    public final String toString() {
        String str = this.f13963a;
        if (str != null) {
            return str;
        }
        r.i(null);
        throw null;
    }
}
