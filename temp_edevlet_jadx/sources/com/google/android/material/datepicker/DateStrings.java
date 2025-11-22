package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes2.dex */
class DateStrings {
    private DateStrings() {
    }

    public static Pair<String, String> getDateRangeString(@Nullable Long l5, @Nullable Long l10) {
        return getDateRangeString(l5, l10, null);
    }

    public static Pair<String, String> getDateRangeString(@Nullable Long l5, @Nullable Long l10, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l5 == null && l10 == null) {
            return Pair.create(null, null);
        }
        if (l5 == null) {
            return Pair.create(null, getDateString(l10.longValue(), simpleDateFormat));
        }
        if (l10 == null) {
            return Pair.create(getDateString(l5.longValue(), simpleDateFormat), null);
        }
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendar = UtcDates.getUtcCalendar();
        utcCalendar.setTimeInMillis(l5.longValue());
        Calendar utcCalendar2 = UtcDates.getUtcCalendar();
        utcCalendar2.setTimeInMillis(l10.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l5.longValue())), simpleDateFormat.format(new Date(l10.longValue())));
        }
        return utcCalendar.get(1) == utcCalendar2.get(1) ? utcCalendar.get(1) == todayCalendar.get(1) ? Pair.create(getMonthDay(l5.longValue(), Locale.getDefault()), getMonthDay(l10.longValue(), Locale.getDefault())) : Pair.create(getMonthDay(l5.longValue(), Locale.getDefault()), getYearMonthDay(l10.longValue(), Locale.getDefault())) : Pair.create(getYearMonthDay(l5.longValue(), Locale.getDefault()), getYearMonthDay(l10.longValue(), Locale.getDefault()));
    }

    public static String getDateString(long j10) {
        return getDateString(j10, null);
    }

    public static String getDateString(long j10, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendar = UtcDates.getUtcCalendar();
        utcCalendar.setTimeInMillis(j10);
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j10)) : todayCalendar.get(1) == utcCalendar.get(1) ? getMonthDay(j10) : getYearMonthDay(j10);
    }

    public static String getMonthDay(long j10) {
        return getMonthDay(j10, Locale.getDefault());
    }

    public static String getMonthDay(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getAbbrMonthDayFormat(locale).format(new Date(j10)) : UtcDates.getMediumNoYear(locale).format(new Date(j10));
    }

    public static String getMonthDayOfWeekDay(long j10) {
        return getMonthDayOfWeekDay(j10, Locale.getDefault());
    }

    public static String getMonthDayOfWeekDay(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getAbbrMonthWeekdayDayFormat(locale).format(new Date(j10)) : UtcDates.getFullFormat(locale).format(new Date(j10));
    }

    public static String getYearMonth(Context context, long j10) {
        return DateUtils.formatDateTime(context, j10 - TimeZone.getDefault().getOffset(j10), 36);
    }

    public static String getYearMonthDay(long j10) {
        return getYearMonthDay(j10, Locale.getDefault());
    }

    public static String getYearMonthDay(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getYearAbbrMonthDayFormat(locale).format(new Date(j10)) : UtcDates.getMediumFormat(locale).format(new Date(j10));
    }

    public static String getYearMonthDayOfWeekDay(long j10) {
        return getYearMonthDayOfWeekDay(j10, Locale.getDefault());
    }

    public static String getYearMonthDayOfWeekDay(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? UtcDates.getYearAbbrMonthWeekdayDayFormat(locale).format(new Date(j10)) : UtcDates.getFullFormat(locale).format(new Date(j10));
    }
}
