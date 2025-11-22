package c5;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;

/* loaded from: classes.dex */
public final class i5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v5 f1649a;

    public i5(v5 v5Var) {
        this.f1649a = v5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a8 a8Var = this.f1649a.f2070p;
        i4 i4Var = a8Var.f1399a;
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.b();
        if (a8Var.b()) {
            boolean zC = a8Var.c();
            v5 v5Var = i4Var.f1642r;
            s3 s3Var = i4Var.f1634h;
            if (zC) {
                i4.c(s3Var);
                s3Var.w.b(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                i4.d(v5Var);
                v5Var.n("auto", "_cmpx", bundle);
            } else {
                i4.c(s3Var);
                String strA = s3Var.w.a();
                if (TextUtils.isEmpty(strA)) {
                    e3 e3Var = i4Var.f1635j;
                    i4.e(e3Var);
                    e3Var.f1506g.a("Cache still valid but referrer not found");
                } else {
                    long jA = ((s3Var.f1979x.a() / 3600000) - 1) * 3600000;
                    Uri uri = Uri.parse(strA);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(uri.getPath(), bundle2);
                    for (String str : uri.getQueryParameterNames()) {
                        bundle2.putString(str, uri.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", jA);
                    Object obj = pair.first;
                    String str2 = obj == null ? "app" : (String) obj;
                    i4.d(v5Var);
                    v5Var.n(str2, "_cmp", (Bundle) pair.second);
                }
                s3Var.w.b(null);
            }
            i4.c(s3Var);
            s3Var.f1979x.b(0L);
        }
    }
}
