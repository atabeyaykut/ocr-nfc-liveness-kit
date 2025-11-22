package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.Arrays;

/* loaded from: classes2.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new Parcelable.Creator<TimeModel>() { // from class: com.google.android.material.timepicker.TimeModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeModel[] newArray(int r12) {
            return new TimeModel[r12];
        }
    };
    public static final String NUMBER_FORMAT = "%d";
    public static final String ZERO_LEADING_NUMBER_FORMAT = "%02d";
    final int format;
    int hour;
    private final MaxInputValidator hourInputValidator;
    int minute;
    private final MaxInputValidator minuteInputValidator;
    int period;
    int selection;

    public TimeModel() {
        this(0);
    }

    public TimeModel(int r32) {
        this(0, 0, 10, r32);
    }

    public TimeModel(int r12, int r22, int r32, int r42) {
        this.hour = r12;
        this.minute = r22;
        this.selection = r32;
        this.format = r42;
        this.period = getPeriod(r12);
        this.minuteInputValidator = new MaxInputValidator(59);
        this.hourInputValidator = new MaxInputValidator(r42 == 1 ? 24 : 12);
    }

    public TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    public static String formatText(Resources resources, CharSequence charSequence) {
        return formatText(resources, charSequence, ZERO_LEADING_NUMBER_FORMAT);
    }

    public static String formatText(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    private static int getPeriod(int r12) {
        return r12 >= 12 ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.hour == timeModel.hour && this.minute == timeModel.minute && this.format == timeModel.format && this.selection == timeModel.selection;
    }

    public int getHourForDisplay() {
        if (this.format == 1) {
            return this.hour % 24;
        }
        int r02 = this.hour;
        if (r02 % 12 == 0) {
            return 12;
        }
        return this.period == 1 ? r02 - 12 : r02;
    }

    public MaxInputValidator getHourInputValidator() {
        return this.hourInputValidator;
    }

    public MaxInputValidator getMinuteInputValidator() {
        return this.minuteInputValidator;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.format), Integer.valueOf(this.hour), Integer.valueOf(this.minute), Integer.valueOf(this.selection)});
    }

    public void setHour(int r42) {
        if (this.format == 1) {
            this.hour = r42;
        } else {
            this.hour = (r42 % 12) + (this.period != 1 ? 0 : 12);
        }
    }

    public void setHourOfDay(int r22) {
        this.period = getPeriod(r22);
        this.hour = r22;
    }

    public void setMinute(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 60) int r12) {
        this.minute = r12 % 60;
    }

    public void setPeriod(int r42) {
        int r02;
        if (r42 != this.period) {
            this.period = r42;
            int r03 = this.hour;
            if (r03 < 12 && r42 == 1) {
                r02 = r03 + 12;
            } else if (r03 < 12 || r42 != 0) {
                return;
            } else {
                r02 = r03 - 12;
            }
            this.hour = r02;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r22) {
        parcel.writeInt(this.hour);
        parcel.writeInt(this.minute);
        parcel.writeInt(this.selection);
        parcel.writeInt(this.format);
    }
}
