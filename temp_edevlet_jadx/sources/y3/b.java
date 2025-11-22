package y3;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.NonNull;
import w3.d;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Context f19314a;

    public b(@NonNull Context context) {
        this.f19314a = context;
    }

    @NonNull
    public final ApplicationInfo a(int r22, @NonNull String str) throws PackageManager.NameNotFoundException {
        return this.f19314a.getPackageManager().getApplicationInfo(str, r22);
    }

    @NonNull
    public final PackageInfo b(int r22, @NonNull String str) throws PackageManager.NameNotFoundException {
        return this.f19314a.getPackageManager().getPackageInfo(str, r22);
    }

    public final boolean c() {
        String nameForUid;
        int callingUid = Binder.getCallingUid();
        int r12 = Process.myUid();
        Context context = this.f19314a;
        if (callingUid == r12) {
            return a.a(context);
        }
        if (!d.a() || (nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return context.getPackageManager().isInstantApp(nameForUid);
    }
}
