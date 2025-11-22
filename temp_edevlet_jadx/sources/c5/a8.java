package c5;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class a8 {

    /* renamed from: a, reason: collision with root package name */
    public final i4 f1399a;

    public a8(i4 i4Var) {
        this.f1399a = i4Var;
    }

    @WorkerThread
    public final void a(Bundle bundle, String str) {
        String string;
        i4 i4Var = this.f1399a;
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.b();
        if (i4Var.a()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            if (true == str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        s3 s3Var = i4Var.f1634h;
        i4.c(s3Var);
        s3Var.w.b(string);
        i4.c(s3Var);
        i4Var.f1640p.getClass();
        s3Var.f1979x.b(System.currentTimeMillis());
    }

    public final boolean b() {
        s3 s3Var = this.f1399a.f1634h;
        i4.c(s3Var);
        return s3Var.f1979x.a() > 0;
    }

    public final boolean c() {
        if (!b()) {
            return false;
        }
        i4 i4Var = this.f1399a;
        i4Var.f1640p.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        s3 s3Var = i4Var.f1634h;
        i4.c(s3Var);
        return jCurrentTimeMillis - s3Var.f1979x.a() > i4Var.f1633g.h(null, r2.R);
    }
}
