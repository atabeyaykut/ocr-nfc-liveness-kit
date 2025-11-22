package j7;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public final class q extends l {

    /* renamed from: b, reason: collision with root package name */
    public static final Class<?>[] f8302b = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* renamed from: a, reason: collision with root package name */
    public Object f8303a;

    public q(Boolean bool) {
        u(bool);
    }

    public q(Number number) {
        u(number);
    }

    public q(String str) {
        u(str);
    }

    public static boolean o(q qVar) {
        Object obj = qVar.f8303a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f8303a == null) {
            return qVar.f8303a == null;
        }
        if (o(this) && o(qVar)) {
            return l().longValue() == qVar.l().longValue();
        }
        Object obj2 = this.f8303a;
        if (!(obj2 instanceof Number) || !(qVar.f8303a instanceof Number)) {
            return obj2.equals(qVar.f8303a);
        }
        double dDoubleValue = l().doubleValue();
        double dDoubleValue2 = qVar.l().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public final boolean h() {
        Object obj = this.f8303a;
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(m());
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        if (this.f8303a == null) {
            return 31;
        }
        if (o(this)) {
            jDoubleToLongBits = l().longValue();
        } else {
            Object obj = this.f8303a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(l().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public final Number l() {
        Object obj = this.f8303a;
        return obj instanceof String ? new l7.h((String) obj) : (Number) obj;
    }

    public final String m() {
        Object obj = this.f8303a;
        return obj instanceof Number ? l().toString() : obj instanceof Boolean ? ((Boolean) obj).toString() : (String) obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof java.lang.Character
            if (r0 == 0) goto L11
            java.lang.Character r7 = (java.lang.Character) r7
            char r7 = r7.charValue()
            java.lang.String r7 = java.lang.String.valueOf(r7)
        Le:
            r6.f8303a = r7
            goto L3d
        L11:
            boolean r0 = r7 instanceof java.lang.Number
            r1 = 1
            if (r0 != 0) goto L39
            boolean r0 = r7 instanceof java.lang.String
            r2 = 0
            if (r0 == 0) goto L1d
        L1b:
            r0 = 1
            goto L35
        L1d:
            java.lang.Class r0 = r7.getClass()
            java.lang.Class<?>[] r3 = j7.q.f8302b
            r4 = 0
        L24:
            r5 = 16
            if (r4 >= r5) goto L34
            r5 = r3[r4]
            boolean r5 = r5.isAssignableFrom(r0)
            if (r5 == 0) goto L31
            goto L1b
        L31:
            int r4 = r4 + 1
            goto L24
        L34:
            r0 = 0
        L35:
            if (r0 == 0) goto L38
            goto L39
        L38:
            r1 = 0
        L39:
            c5.w.e(r1)
            goto Le
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j7.q.u(java.lang.Object):void");
    }
}
