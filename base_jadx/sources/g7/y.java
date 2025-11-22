package g7;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final x5.c f5945a;

    /* renamed from: b, reason: collision with root package name */
    public final d0 f5946b;

    /* renamed from: c, reason: collision with root package name */
    public final l3.c f5947c;

    /* renamed from: d, reason: collision with root package name */
    public final a7.b<i7.g> f5948d;

    /* renamed from: e, reason: collision with root package name */
    public final a7.b<y6.e> f5949e;
    public final b7.d f;

    public y(x5.c cVar, d0 d0Var, a7.b<i7.g> bVar, a7.b<y6.e> bVar2, b7.d dVar) {
        cVar.a();
        l3.c cVar2 = new l3.c(cVar.f19165a);
        this.f5945a = cVar;
        this.f5946b = d0Var;
        this.f5947c = cVar2;
        this.f5948d = bVar;
        this.f5949e = bVar2;
        this.f = dVar;
    }

    public final void a(String str, String str2, Bundle bundle) throws ExecutionException, InterruptedException {
        int r02;
        String strEncodeToString;
        int r22;
        PackageInfo packageInfoD;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        x5.c cVar = this.f5945a;
        cVar.a();
        bundle.putString("gmp_app_id", cVar.f19167c.f19177b);
        d0 d0Var = this.f5946b;
        synchronized (d0Var) {
            if (d0Var.f5847d == 0 && (packageInfoD = d0Var.d("com.google.android.gms")) != null) {
                d0Var.f5847d = packageInfoD.versionCode;
            }
            r02 = d0Var.f5847d;
        }
        bundle.putString("gmsv", Integer.toString(r02));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f5946b.a());
        bundle.putString("app_ver_name", this.f5946b.b());
        x5.c cVar2 = this.f5945a;
        cVar2.a();
        try {
            strEncodeToString = Base64.encodeToString(MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(cVar2.f19166b.getBytes()), 11);
        } catch (NoSuchAlgorithmException unused) {
            strEncodeToString = "[HASH-ERROR]";
        }
        bundle.putString("firebase-app-name-hash", strEncodeToString);
        try {
            String strA = ((b7.i) h5.n.a(this.f.a())).a();
            if (TextUtils.isEmpty(strA)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", strA);
            }
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e10);
        }
        bundle.putString("appid", (String) h5.n.a(this.f.getId()));
        bundle.putString("cliv", "fcm-23.0.0");
        y6.e eVar = this.f5949e.get();
        i7.g gVar = this.f5948d.get();
        if (eVar == null || gVar == null || (r22 = eVar.a("fire-iid")) == 1) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(g.d.c(r22)));
        bundle.putString("Firebase-Client", gVar.a());
    }

    public final h5.k<Bundle> b(String str, String str2, Bundle bundle) {
        int r02;
        PackageInfo packageInfoB;
        try {
            a(str, str2, bundle);
            l3.c cVar = this.f5947c;
            l3.v vVar = cVar.f9344c;
            synchronized (vVar) {
                if (vVar.f9383b == 0) {
                    try {
                        packageInfoB = y3.c.a(vVar.f9382a).b(0, "com.google.android.gms");
                    } catch (PackageManager.NameNotFoundException e10) {
                        String strValueOf = String.valueOf(e10);
                        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 23);
                        sb2.append("Failed to find package ");
                        sb2.append(strValueOf);
                        Log.w("Metadata", sb2.toString());
                        packageInfoB = null;
                    }
                    if (packageInfoB != null) {
                        vVar.f9383b = packageInfoB.versionCode;
                    }
                    r02 = vVar.f9383b;
                } else {
                    r02 = vVar.f9383b;
                }
            }
            if (r02 < 12000000) {
                return cVar.f9344c.a() != 0 ? cVar.a(bundle).g(l3.y.f9389a, new l3.w(cVar, bundle)) : h5.n.d(new IOException("MISSING_INSTANCEID_SERVICE"));
            }
            l3.u uVarA = l3.u.a(cVar.f9343b);
            return uVarA.c(new l3.t(uVarA.b(), bundle)).e(l3.y.f9389a, c5.w.f2086e);
        } catch (InterruptedException | ExecutionException e11) {
            return h5.n.d(e11);
        }
    }
}
