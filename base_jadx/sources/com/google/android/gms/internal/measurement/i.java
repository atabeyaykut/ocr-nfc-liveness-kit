package com.google.android.gms.internal.measurement;

import androidx.exifinterface.media.ExifInterface;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class i implements p {

    /* renamed from: a, reason: collision with root package name */
    public final Double f3540a;

    public i(Double d10) {
        if (d10 == null) {
            this.f3540a = Double.valueOf(Double.NaN);
        } else {
            this.f3540a = d10;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        return new i(this.f3540a);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return this.f3540a.equals(((i) obj).f3540a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() throws NumberFormatException {
        Double d10 = this.f3540a;
        if (Double.isNaN(d10.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d10.doubleValue())) {
            return d10.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalStripTrailingZeros = BigDecimal.valueOf(d10.doubleValue()).stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimalStripTrailingZeros.scale() > 0 ? bigDecimalStripTrailingZeros.precision() : bigDecimalStripTrailingZeros.scale()) - 1);
        String str = decimalFormat.format(bigDecimalStripTrailingZeros);
        int r32 = str.indexOf(ExifInterface.LONGITUDE_EAST);
        if (r32 <= 0) {
            return str;
        }
        int r33 = Integer.parseInt(str.substring(r32 + 1));
        return ((r33 >= 0 || r33 <= -7) && (r33 < 0 || r33 >= 21)) ? str.replace("E-", "e-").replace(ExifInterface.LONGITUDE_EAST, "e+") : bigDecimalStripTrailingZeros.toPlainString();
    }

    public final int hashCode() {
        return this.f3540a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        return this.f3540a;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        Double d10 = this.f3540a;
        boolean z10 = false;
        if (!Double.isNaN(d10.doubleValue()) && d10.doubleValue() != 0.0d) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return null;
    }

    public final String toString() {
        return h();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p w(String str, s3 s3Var, ArrayList arrayList) {
        if ("toString".equals(str)) {
            return new t(h());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", h(), str));
    }
}
