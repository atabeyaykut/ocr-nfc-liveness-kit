package m4;

import androidx.annotation.GuardedBy;
import androidx.core.location.LocationRequestCompat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("sharedStringBuilder")
    public static final StringBuilder f10030a;

    static {
        Locale locale = Locale.ROOT;
        new SimpleDateFormat("MM-dd HH:mm:ss.SSS", locale);
        new SimpleDateFormat("MM-dd HH:mm:ss", locale);
        f10030a = new StringBuilder(33);
    }

    public static void a(long j10, StringBuilder sb2) {
        String str;
        if (j10 == 0) {
            str = "0s";
        } else {
            sb2.ensureCapacity(sb2.length() + 27);
            boolean z10 = false;
            if (j10 < 0) {
                sb2.append("-");
                if (j10 != Long.MIN_VALUE) {
                    j10 = -j10;
                } else {
                    j10 = LocationRequestCompat.PASSIVE_INTERVAL;
                    z10 = true;
                }
            }
            if (j10 >= 86400000) {
                sb2.append(j10 / 86400000);
                sb2.append("d");
                j10 %= 86400000;
            }
            if (true == z10) {
                j10 = 25975808;
            }
            if (j10 >= 3600000) {
                sb2.append(j10 / 3600000);
                sb2.append("h");
                j10 %= 3600000;
            }
            if (j10 >= 60000) {
                sb2.append(j10 / 60000);
                sb2.append("m");
                j10 %= 60000;
            }
            if (j10 >= 1000) {
                sb2.append(j10 / 1000);
                sb2.append("s");
                j10 %= 1000;
            }
            if (j10 <= 0) {
                return;
            }
            sb2.append(j10);
            str = "ms";
        }
        sb2.append(str);
    }
}
