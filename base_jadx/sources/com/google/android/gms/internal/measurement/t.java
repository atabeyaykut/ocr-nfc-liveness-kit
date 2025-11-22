package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class t implements Iterable<p>, p {

    /* renamed from: a, reason: collision with root package name */
    public final String f3766a;

    public t(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.f3766a = str;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        return new t(this.f3766a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            return this.f3766a.equals(((t) obj).f3766a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        return this.f3766a;
    }

    public final int hashCode() {
        return this.f3766a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        double d10;
        String str = this.f3766a;
        if (str.isEmpty()) {
            d10 = 0.0d;
        } else {
            try {
                return Double.valueOf(str);
            } catch (NumberFormatException unused) {
                d10 = Double.NaN;
            }
        }
        return Double.valueOf(d10);
    }

    @Override // java.lang.Iterable
    public final Iterator<p> iterator() {
        return new s(this);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        return Boolean.valueOf(!this.f3766a.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return new r(this);
    }

    public final String toString() {
        String str = this.f3766a;
        StringBuilder sb2 = new StringBuilder(str.length() + 2);
        sb2.append('\"');
        sb2.append(str);
        sb2.append('\"');
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02fe A[LOOP:0: B:143:0x02fc->B:144:0x02fe, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0581  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0158  */
    @Override // com.google.android.gms.internal.measurement.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.p w(java.lang.String r22, com.google.android.gms.internal.measurement.s3 r23, java.util.ArrayList r24) {
        /*
            Method dump skipped, instructions count: 1706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.t.w(java.lang.String, com.google.android.gms.internal.measurement.s3, java.util.ArrayList):com.google.android.gms.internal.measurement.p");
    }
}
