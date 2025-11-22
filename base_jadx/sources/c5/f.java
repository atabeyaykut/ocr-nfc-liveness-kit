package c5;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: c, reason: collision with root package name */
    public static final f f1530c = new f(null, null);

    /* renamed from: a, reason: collision with root package name */
    public final Boolean f1531a;

    /* renamed from: b, reason: collision with root package name */
    public final Boolean f1532b;

    public f(Boolean bool, Boolean bool2) {
        this.f1531a = bool;
        this.f1532b = bool2;
    }

    public static f a(Bundle bundle) {
        return bundle == null ? f1530c : new f(h(bundle.getString("ad_storage")), h(bundle.getString("analytics_storage")));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static c5.f b(java.lang.String r7) {
        /*
            r0 = 0
            if (r7 == 0) goto L37
            int r1 = r7.length()
            r2 = 49
            r3 = 48
            r4 = 3
            if (r1 < r4) goto L1e
            r1 = 2
            char r1 = r7.charAt(r1)
            if (r1 == r3) goto L1b
            if (r1 == r2) goto L18
            goto L1e
        L18:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            goto L1f
        L1b:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            goto L1f
        L1e:
            r1 = r0
        L1f:
            int r5 = r7.length()
            r6 = 4
            if (r5 < r6) goto L34
            char r7 = r7.charAt(r4)
            if (r7 == r3) goto L32
            if (r7 == r2) goto L2f
            goto L34
        L2f:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            goto L34
        L32:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
        L34:
            r7 = r0
            r0 = r1
            goto L38
        L37:
            r7 = r0
        L38:
            c5.f r1 = new c5.f
            r1.<init>(r0, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.f.b(java.lang.String):c5.f");
    }

    public static final int g(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    public static Boolean h(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final f c(f fVar) {
        Boolean boolValueOf = fVar.f1531a;
        Boolean bool = this.f1531a;
        if (bool != null) {
            if (boolValueOf == null) {
                boolValueOf = bool;
            } else {
                boolValueOf = Boolean.valueOf(bool.booleanValue() && boolValueOf.booleanValue());
            }
        }
        Boolean boolValueOf2 = this.f1532b;
        Boolean bool2 = fVar.f1532b;
        if (boolValueOf2 == null) {
            boolValueOf2 = bool2;
        } else if (bool2 != null) {
            boolValueOf2 = Boolean.valueOf(boolValueOf2.booleanValue() && bool2.booleanValue());
        }
        return new f(boolValueOf, boolValueOf2);
    }

    public final String d() {
        StringBuilder sb2 = new StringBuilder("G1");
        char c10 = '1';
        Boolean bool = this.f1531a;
        sb2.append(bool == null ? '-' : bool.booleanValue() ? '1' : '0');
        Boolean bool2 = this.f1532b;
        if (bool2 == null) {
            c10 = '-';
        } else if (!bool2.booleanValue()) {
            c10 = '0';
        }
        sb2.append(c10);
        return sb2.toString();
    }

    public final boolean e() {
        Boolean bool = this.f1531a;
        return bool == null || bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return g(this.f1531a) == g(fVar.f1531a) && g(this.f1532b) == g(fVar.f1532b);
    }

    public final boolean f() {
        Boolean bool = this.f1532b;
        return bool == null || bool.booleanValue();
    }

    public final int hashCode() {
        return g(this.f1532b) + ((g(this.f1531a) + 527) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ConsentSettings: adStorage=");
        Boolean bool = this.f1531a;
        if (bool == null) {
            sb2.append("uninitialized");
        } else {
            sb2.append(true != bool.booleanValue() ? "denied" : "granted");
        }
        sb2.append(", analyticsStorage=");
        Boolean bool2 = this.f1532b;
        if (bool2 == null) {
            sb2.append("uninitialized");
        } else {
            sb2.append(true == bool2.booleanValue() ? "granted" : "denied");
        }
        return sb2.toString();
    }
}
