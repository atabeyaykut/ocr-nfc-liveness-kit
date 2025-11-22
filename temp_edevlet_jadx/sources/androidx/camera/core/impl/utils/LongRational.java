package androidx.camera.core.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.work.WorkRequest;

@RequiresApi(21)
/* loaded from: classes.dex */
final class LongRational {
    private final long mDenominator;
    private final long mNumerator;

    public LongRational(double d10) {
        this((long) (d10 * 10000.0d), WorkRequest.MIN_BACKOFF_MILLIS);
    }

    public LongRational(long j10, long j11) {
        this.mNumerator = j10;
        this.mDenominator = j11;
    }

    public long getDenominator() {
        return this.mDenominator;
    }

    public long getNumerator() {
        return this.mNumerator;
    }

    public double toDouble() {
        return this.mNumerator / this.mDenominator;
    }

    @NonNull
    public String toString() {
        return this.mNumerator + "/" + this.mDenominator;
    }
}
