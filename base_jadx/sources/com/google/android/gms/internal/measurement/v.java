package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class v extends w {
    public v() {
        this.f3809a.add(h0.BITWISE_AND);
        this.f3809a.add(h0.BITWISE_LEFT_SHIFT);
        this.f3809a.add(h0.BITWISE_NOT);
        this.f3809a.add(h0.BITWISE_OR);
        this.f3809a.add(h0.BITWISE_RIGHT_SHIFT);
        this.f3809a.add(h0.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.f3809a.add(h0.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, s3 s3Var, ArrayList arrayList) {
        h0 h0Var = h0.ADD;
        switch (c5.w.Y(str).ordinal()) {
            case 4:
                c5.w.b0("BITWISE_AND", 2, arrayList);
                return new i(Double.valueOf(c5.w.Q(s3Var.b((p) arrayList.get(0)).i().doubleValue()) & c5.w.Q(s3Var.b((p) arrayList.get(1)).i().doubleValue())));
            case 5:
                c5.w.b0("BITWISE_LEFT_SHIFT", 2, arrayList);
                return new i(Double.valueOf(c5.w.Q(s3Var.b((p) arrayList.get(0)).i().doubleValue()) << ((int) (c5.w.V(s3Var.b((p) arrayList.get(1)).i().doubleValue()) & 31))));
            case 6:
                c5.w.b0("BITWISE_NOT", 1, arrayList);
                return new i(Double.valueOf(~c5.w.Q(s3Var.b((p) arrayList.get(0)).i().doubleValue())));
            case 7:
                c5.w.b0("BITWISE_OR", 2, arrayList);
                return new i(Double.valueOf(c5.w.Q(s3Var.b((p) arrayList.get(0)).i().doubleValue()) | c5.w.Q(s3Var.b((p) arrayList.get(1)).i().doubleValue())));
            case 8:
                c5.w.b0("BITWISE_RIGHT_SHIFT", 2, arrayList);
                return new i(Double.valueOf(c5.w.Q(s3Var.b((p) arrayList.get(0)).i().doubleValue()) >> ((int) (c5.w.V(s3Var.b((p) arrayList.get(1)).i().doubleValue()) & 31))));
            case 9:
                c5.w.b0("BITWISE_UNSIGNED_RIGHT_SHIFT", 2, arrayList);
                return new i(Double.valueOf(c5.w.V(s3Var.b((p) arrayList.get(0)).i().doubleValue()) >>> ((int) (c5.w.V(s3Var.b((p) arrayList.get(1)).i().doubleValue()) & 31))));
            case 10:
                c5.w.b0("BITWISE_XOR", 2, arrayList);
                return new i(Double.valueOf(c5.w.Q(s3Var.b((p) arrayList.get(0)).i().doubleValue()) ^ c5.w.Q(s3Var.b((p) arrayList.get(1)).i().doubleValue())));
            default:
                b(str);
                throw null;
        }
    }
}
