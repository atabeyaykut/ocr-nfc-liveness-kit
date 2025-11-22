package wc;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import l9.m;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final a f18865a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f18866b;

    /* renamed from: c, reason: collision with root package name */
    public static final DateFormat[] f18867c;

    public static final class a extends ThreadLocal<DateFormat> {
        @Override // java.lang.ThreadLocal
        public final DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(sc.c.f15383d);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f18866b = strArr;
        f18867c = new DateFormat[strArr.length];
    }

    public static final Date a(String toHttpDateOrNull) {
        kotlin.jvm.internal.h.f(toHttpDateOrNull, "$this$toHttpDateOrNull");
        if (toHttpDateOrNull.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date date = f18865a.get().parse(toHttpDateOrNull, parsePosition);
        if (parsePosition.getIndex() == toHttpDateOrNull.length()) {
            return date;
        }
        String[] strArr = f18866b;
        synchronized (strArr) {
            int length = strArr.length;
            for (int r52 = 0; r52 < length; r52++) {
                DateFormat[] dateFormatArr = f18867c;
                DateFormat simpleDateFormat = dateFormatArr[r52];
                if (simpleDateFormat == null) {
                    simpleDateFormat = new SimpleDateFormat(f18866b[r52], Locale.US);
                    simpleDateFormat.setTimeZone(sc.c.f15383d);
                    dateFormatArr[r52] = simpleDateFormat;
                }
                parsePosition.setIndex(0);
                Date date2 = simpleDateFormat.parse(toHttpDateOrNull, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return date2;
                }
            }
            m mVar = m.f9594a;
            return null;
        }
    }
}
