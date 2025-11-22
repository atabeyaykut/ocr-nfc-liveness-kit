package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: classes2.dex */
class TimeSource {
    private static final TimeSource SYSTEM_TIME_SOURCE = new TimeSource(null, null);

    @Nullable
    private final Long fixedTimeMs;

    @Nullable
    private final TimeZone fixedTimeZone;

    private TimeSource(@Nullable Long l5, @Nullable TimeZone timeZone) {
        this.fixedTimeMs = l5;
        this.fixedTimeZone = timeZone;
    }

    public static TimeSource fixed(long j10) {
        return new TimeSource(Long.valueOf(j10), null);
    }

    public static TimeSource fixed(long j10, @Nullable TimeZone timeZone) {
        return new TimeSource(Long.valueOf(j10), timeZone);
    }

    public static TimeSource system() {
        return SYSTEM_TIME_SOURCE;
    }

    public Calendar now() {
        return now(this.fixedTimeZone);
    }

    public Calendar now(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l5 = this.fixedTimeMs;
        if (l5 != null) {
            calendar.setTimeInMillis(l5.longValue());
        }
        return calendar;
    }
}
