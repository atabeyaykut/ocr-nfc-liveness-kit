package y6;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    public static f f19323b;

    /* renamed from: c, reason: collision with root package name */
    public static final SimpleDateFormat f19324c = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f19325a;

    public f(Context context) {
        this.f19325a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    public final synchronized boolean a(long j10, String str) {
        if (!this.f19325a.contains(str)) {
            this.f19325a.edit().putLong(str, j10).apply();
            return true;
        }
        Date date = new Date(this.f19325a.getLong(str, -1L));
        Date date2 = new Date(j10);
        SimpleDateFormat simpleDateFormat = f19324c;
        if (!(!simpleDateFormat.format(date).equals(simpleDateFormat.format(date2)))) {
            return false;
        }
        this.f19325a.edit().putLong(str, j10).apply();
        return true;
    }
}
