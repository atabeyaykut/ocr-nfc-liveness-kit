package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class TimeUtils {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private TimeUtils() {
    }

    private static int accumField(int r22, int r32, boolean z10, int r52) {
        if (r22 > 99 || (z10 && r52 >= 3)) {
            return r32 + 3;
        }
        if (r22 > 9 || (z10 && r52 >= 2)) {
            return r32 + 2;
        }
        if (z10 || r22 > 0) {
            return r32 + 1;
        }
        return 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, long j11, PrintWriter printWriter) {
        if (j10 == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j10 - j11, printWriter, 0);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, PrintWriter printWriter) {
        formatDuration(j10, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, PrintWriter printWriter, int r52) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j10, r52)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, StringBuilder sb2) {
        synchronized (sFormatSync) {
            sb2.append(sFormatStr, 0, formatDurationLocked(j10, 0));
        }
    }

    private static int formatDurationLocked(long j10, int r19) {
        char c10;
        int r52;
        int r12;
        int r122;
        int r02;
        int r72;
        long j11 = j10;
        if (sFormatStr.length < r19) {
            sFormatStr = new char[r19];
        }
        char[] cArr = sFormatStr;
        if (j11 == 0) {
            int r03 = r19 - 1;
            while (r03 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j11 > 0) {
            c10 = '+';
        } else {
            j11 = -j11;
            c10 = '-';
        }
        int r13 = (int) (j11 % 1000);
        int r04 = (int) Math.floor(j11 / 1000);
        if (r04 > SECONDS_PER_DAY) {
            r52 = r04 / SECONDS_PER_DAY;
            r04 -= SECONDS_PER_DAY * r52;
        } else {
            r52 = 0;
        }
        if (r04 > SECONDS_PER_HOUR) {
            r12 = r04 / SECONDS_PER_HOUR;
            r04 -= r12 * SECONDS_PER_HOUR;
        } else {
            r12 = 0;
        }
        if (r04 > 60) {
            int r73 = r04 / 60;
            r122 = r04 - (r73 * 60);
            r02 = r73;
        } else {
            r122 = r04;
            r02 = 0;
        }
        if (r19 != 0) {
            int r74 = accumField(r52, 1, false, 0);
            int r75 = r74 + accumField(r12, 1, r74 > 0, 2);
            int r76 = r75 + accumField(r02, 1, r75 > 0, 2);
            int r77 = r76 + accumField(r122, 1, r76 > 0, 2);
            r72 = 0;
            for (int r82 = accumField(r13, 2, true, r77 > 0 ? 3 : 0) + 1 + r77; r82 < r19; r82++) {
                cArr[r72] = ' ';
                r72++;
            }
        } else {
            r72 = 0;
        }
        cArr[r72] = c10;
        int r92 = r72 + 1;
        boolean z10 = r19 != 0;
        int r78 = printField(cArr, r52, 'd', r92, false, 0);
        int r79 = printField(cArr, r12, 'h', r78, r78 != r92, z10 ? 2 : 0);
        int r710 = printField(cArr, r02, 'm', r79, r79 != r92, z10 ? 2 : 0);
        int r711 = printField(cArr, r122, 's', r710, r710 != r92, z10 ? 2 : 0);
        int r05 = printField(cArr, r13, 'm', r711, true, (!z10 || r711 == r92) ? 0 : 3);
        cArr[r05] = 's';
        return r05 + 1;
    }

    private static int printField(char[] cArr, int r32, char c10, int r52, boolean z10, int r72) {
        int r12;
        if (!z10 && r32 <= 0) {
            return r52;
        }
        if ((!z10 || r72 < 3) && r32 <= 99) {
            r12 = r52;
        } else {
            int r02 = r32 / 100;
            cArr[r52] = (char) (r02 + 48);
            r12 = r52 + 1;
            r32 -= r02 * 100;
        }
        if ((z10 && r72 >= 2) || r32 > 9 || r52 != r12) {
            int r53 = r32 / 10;
            cArr[r12] = (char) (r53 + 48);
            r12++;
            r32 -= r53 * 10;
        }
        cArr[r12] = (char) (r32 + 48);
        int r13 = r12 + 1;
        cArr[r13] = c10;
        return r13 + 1;
    }
}
