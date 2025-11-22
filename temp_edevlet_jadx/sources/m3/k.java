package m3;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.RestrictedInheritance;

@CheckReturnValue
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes.dex */
public final class k {

    /* renamed from: c, reason: collision with root package name */
    public static k f9958c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9959a;

    /* renamed from: b, reason: collision with root package name */
    public volatile String f9960b;

    public k(@NonNull Context context) {
        this.f9959a = context.getApplicationContext();
    }

    @NonNull
    public static k a(@NonNull Context context) {
        r3.r.i(context);
        synchronized (k.class) {
            if (f9958c == null) {
                y.a(context);
                f9958c = new k(context);
            }
        }
        return f9958c;
    }

    public static final u c(PackageInfo packageInfo, u... uVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        v vVar = new v(packageInfo.signatures[0].toByteArray());
        for (int r22 = 0; r22 < uVarArr.length; r22++) {
            if (uVarArr[r22].equals(vVar)) {
                return uVarArr[r22];
            }
        }
        return null;
    }

    public static final boolean d(@NonNull PackageInfo packageInfo, boolean z10) {
        if (z10 && packageInfo != null && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            z10 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
        }
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z10 ? c(packageInfo, x.f9973a) : c(packageInfo, x.f9973a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0193 A[EDGE_INSN: B:123:0x0193->B:98:0x0193 BREAK  A[LOOP:0: B:8:0x0019->B:95:0x0182], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0182 A[LOOP:0: B:8:0x0019->B:95:0x0182, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(int r20) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m3.k.b(int):boolean");
    }
}
