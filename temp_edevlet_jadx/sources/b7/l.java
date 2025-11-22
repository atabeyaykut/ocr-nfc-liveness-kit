package b7;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import c5.v;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: b, reason: collision with root package name */
    public static final long f1169b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f1170c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d, reason: collision with root package name */
    public static l f1171d;

    /* renamed from: a, reason: collision with root package name */
    public final v f1172a;

    public l(v vVar) {
        this.f1172a = vVar;
    }

    public final boolean a(@NonNull d7.a aVar) {
        if (TextUtils.isEmpty(aVar.f4676d)) {
            return true;
        }
        long j10 = aVar.f + aVar.f4678g;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f1172a.getClass();
        return j10 < timeUnit.toSeconds(System.currentTimeMillis()) + f1169b;
    }
}
