package c5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.qb;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import s3.b;

/* loaded from: classes.dex */
public final class q7 extends j7 {
    public q7(o7 o7Var) {
        super(o7Var);
    }

    public static com.google.android.gms.internal.measurement.n6 A(com.google.android.gms.internal.measurement.n6 n6Var, byte[] bArr) throws com.google.android.gms.internal.measurement.z6 {
        com.google.android.gms.internal.measurement.d6 d6VarB;
        com.google.android.gms.internal.measurement.d6 d6Var = com.google.android.gms.internal.measurement.d6.f3442c;
        if (d6Var == null) {
            synchronized (com.google.android.gms.internal.measurement.d6.class) {
                d6VarB = com.google.android.gms.internal.measurement.d6.f3442c;
                if (d6VarB == null) {
                    d6VarB = com.google.android.gms.internal.measurement.l6.b();
                    com.google.android.gms.internal.measurement.d6.f3442c = d6VarB;
                }
            }
            d6Var = d6VarB;
        }
        n6Var.getClass();
        if (d6Var != null) {
            n6Var.l(bArr, bArr.length, d6Var);
            return n6Var;
        }
        n6Var.l(bArr, bArr.length, com.google.android.gms.internal.measurement.d6.a());
        return n6Var;
    }

    public static ArrayList D(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                com.google.android.gms.internal.measurement.k3 k3VarV = com.google.android.gms.internal.measurement.l3.v();
                for (String str : bundle.keySet()) {
                    com.google.android.gms.internal.measurement.k3 k3VarV2 = com.google.android.gms.internal.measurement.l3.v();
                    k3VarV2.q(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        k3VarV2.p(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        k3VarV2.r((String) obj);
                    } else if (obj instanceof Double) {
                        k3VarV2.n(((Double) obj).doubleValue());
                    }
                    if (k3VarV.f3643c) {
                        k3VarV.i();
                        k3VarV.f3643c = false;
                    }
                    com.google.android.gms.internal.measurement.l3.H((com.google.android.gms.internal.measurement.l3) k3VarV.f3642b, k3VarV2.f());
                }
                if (((com.google.android.gms.internal.measurement.l3) k3VarV.f3642b).t() > 0) {
                    arrayList.add(k3VarV.f());
                }
            }
        }
        return arrayList;
    }

    public static ArrayList F(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int r42 = 0; r42 < length; r42++) {
            long j10 = 0;
            for (int r72 = 0; r72 < 64; r72++) {
                int r82 = (r42 * 64) + r72;
                if (r82 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(r82)) {
                    j10 |= 1 << r72;
                }
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    public static boolean I(int r42, com.google.android.gms.internal.measurement.v6 v6Var) {
        if (r42 < v6Var.size() * 64) {
            return ((1 << (r42 % 64)) & v6Var.get(r42 / 64).longValue()) != 0;
        }
        return false;
    }

    public static boolean K(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static final void g(com.google.android.gms.internal.measurement.g3 g3Var, String str, Object obj) {
        List<com.google.android.gms.internal.measurement.l3> listW = g3Var.w();
        int r22 = 0;
        while (true) {
            if (r22 >= listW.size()) {
                r22 = -1;
                break;
            } else if (str.equals(listW.get(r22).x())) {
                break;
            } else {
                r22++;
            }
        }
        com.google.android.gms.internal.measurement.k3 k3VarV = com.google.android.gms.internal.measurement.l3.v();
        k3VarV.q(str);
        if (obj instanceof Long) {
            k3VarV.p(((Long) obj).longValue());
        } else if (obj instanceof String) {
            k3VarV.r((String) obj);
        } else if (obj instanceof Double) {
            k3VarV.n(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            ArrayList arrayListD = D((Bundle[]) obj);
            if (k3VarV.f3643c) {
                k3VarV.i();
                k3VarV.f3643c = false;
            }
            com.google.android.gms.internal.measurement.l3.I((com.google.android.gms.internal.measurement.l3) k3VarV.f3642b, arrayListD);
        }
        if (r22 < 0) {
            g3Var.q(k3VarV);
            return;
        }
        if (g3Var.f3643c) {
            g3Var.i();
            g3Var.f3643c = false;
        }
        com.google.android.gms.internal.measurement.h3.A((com.google.android.gms.internal.measurement.h3) g3Var.f3642b, r22, k3VarV.f());
    }

    public static final com.google.android.gms.internal.measurement.l3 h(com.google.android.gms.internal.measurement.h3 h3Var, String str) {
        for (com.google.android.gms.internal.measurement.l3 l3Var : h3Var.z()) {
            if (l3Var.x().equals(str)) {
                return l3Var;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r6v9, types: [android.os.Bundle[], java.io.Serializable] */
    public static final Serializable n(com.google.android.gms.internal.measurement.h3 h3Var, String str) {
        com.google.android.gms.internal.measurement.l3 l3VarH = h(h3Var, str);
        if (l3VarH == null) {
            return null;
        }
        if (l3VarH.O()) {
            return l3VarH.y();
        }
        if (l3VarH.M()) {
            return Long.valueOf(l3VarH.u());
        }
        if (l3VarH.K()) {
            return Double.valueOf(l3VarH.r());
        }
        if (l3VarH.t() <= 0) {
            return null;
        }
        com.google.android.gms.internal.measurement.w6<com.google.android.gms.internal.measurement.l3> w6VarZ = l3VarH.z();
        ArrayList arrayList = new ArrayList();
        for (com.google.android.gms.internal.measurement.l3 l3Var : w6VarZ) {
            if (l3Var != null) {
                Bundle bundle = new Bundle();
                for (com.google.android.gms.internal.measurement.l3 l3Var2 : l3Var.z()) {
                    if (l3Var2.O()) {
                        bundle.putString(l3Var2.x(), l3Var2.y());
                    } else if (l3Var2.M()) {
                        bundle.putLong(l3Var2.x(), l3Var2.u());
                    } else if (l3Var2.K()) {
                        bundle.putDouble(l3Var2.x(), l3Var2.r());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static final void q(StringBuilder sb2, int r32) {
        for (int r02 = 0; r02 < r32; r02++) {
            sb2.append("  ");
        }
    }

    public static final String r(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("Dynamic ");
        }
        if (z11) {
            sb2.append("Sequence ");
        }
        if (z12) {
            sb2.append("Session-Scoped ");
        }
        return sb2.toString();
    }

    public static final void s(StringBuilder sb2, String str, com.google.android.gms.internal.measurement.w3 w3Var) {
        if (w3Var == null) {
            return;
        }
        q(sb2, 3);
        sb2.append(str);
        sb2.append(" {\n");
        if (w3Var.s() != 0) {
            q(sb2, 4);
            sb2.append("results: ");
            int r52 = 0;
            for (Long l5 : w3Var.B()) {
                int r72 = r52 + 1;
                if (r52 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l5);
                r52 = r72;
            }
            sb2.append('\n');
        }
        if (w3Var.u() != 0) {
            q(sb2, 4);
            sb2.append("status: ");
            int r53 = 0;
            for (Long l10 : w3Var.D()) {
                int r73 = r53 + 1;
                if (r53 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l10);
                r53 = r73;
            }
            sb2.append('\n');
        }
        if (w3Var.r() != 0) {
            q(sb2, 4);
            sb2.append("dynamic_filter_timestamps: {");
            int r6 = 0;
            for (com.google.android.gms.internal.measurement.f3 f3Var : w3Var.A()) {
                int r82 = r6 + 1;
                if (r6 != 0) {
                    sb2.append(", ");
                }
                sb2.append(f3Var.y() ? Integer.valueOf(f3Var.r()) : null);
                sb2.append(":");
                sb2.append(f3Var.x() ? Long.valueOf(f3Var.s()) : null);
                r6 = r82;
            }
            sb2.append("}\n");
        }
        if (w3Var.t() != 0) {
            q(sb2, 4);
            sb2.append("sequence_filter_timestamps: {");
            int r12 = 0;
            for (com.google.android.gms.internal.measurement.y3 y3Var : w3Var.C()) {
                int r62 = r12 + 1;
                if (r12 != 0) {
                    sb2.append(", ");
                }
                sb2.append(y3Var.z() ? Integer.valueOf(y3Var.s()) : null);
                sb2.append(": [");
                Iterator<Long> it = y3Var.w().iterator();
                int r32 = 0;
                while (it.hasNext()) {
                    long jLongValue = it.next().longValue();
                    int r92 = r32 + 1;
                    if (r32 != 0) {
                        sb2.append(", ");
                    }
                    sb2.append(jLongValue);
                    r32 = r92;
                }
                sb2.append("]");
                r12 = r62;
            }
            sb2.append("}\n");
        }
        q(sb2, 3);
        sb2.append("}\n");
    }

    public static final void t(StringBuilder sb2, int r12, String str, Object obj) {
        if (obj == null) {
            return;
        }
        q(sb2, r12 + 1);
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj);
        sb2.append('\n');
    }

    public static final void u(StringBuilder sb2, int r22, String str, com.google.android.gms.internal.measurement.m2 m2Var) {
        if (m2Var == null) {
            return;
        }
        q(sb2, r22);
        sb2.append(str);
        sb2.append(" {\n");
        if (m2Var.x()) {
            int r32 = m2Var.C();
            t(sb2, r22, "comparison_type", r32 != 1 ? r32 != 2 ? r32 != 3 ? r32 != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (m2Var.z()) {
            t(sb2, r22, "match_as_float", Boolean.valueOf(m2Var.w()));
        }
        if (m2Var.y()) {
            t(sb2, r22, "comparison_value", m2Var.t());
        }
        if (m2Var.B()) {
            t(sb2, r22, "min_comparison_value", m2Var.v());
        }
        if (m2Var.A()) {
            t(sb2, r22, "max_comparison_value", m2Var.u());
        }
        q(sb2, r22);
        sb2.append("}\n");
    }

    public static int v(com.google.android.gms.internal.measurement.p3 p3Var, String str) {
        for (int r02 = 0; r02 < ((com.google.android.gms.internal.measurement.q3) p3Var.f3642b).l1(); r02++) {
            if (str.equals(((com.google.android.gms.internal.measurement.q3) p3Var.f3642b).A1(r02).w())) {
                return r02;
            }
        }
        return -1;
    }

    public final String B(com.google.android.gms.internal.measurement.o3 o3Var) {
        StringBuilder sbE = androidx.constraintlayout.core.a.e("\nbatch {\n");
        for (com.google.android.gms.internal.measurement.q3 q3Var : o3Var.u()) {
            if (q3Var != null) {
                q(sbE, 1);
                sbE.append("bundle {\n");
                if (q3Var.a1()) {
                    t(sbE, 1, "protocol_version", Integer.valueOf(q3Var.i1()));
                }
                t(sbE, 1, "platform", q3Var.B());
                if (q3Var.W0()) {
                    t(sbE, 1, "gmp_version", Long.valueOf(q3Var.r1()));
                }
                if (q3Var.g1()) {
                    t(sbE, 1, "uploading_gmp_version", Long.valueOf(q3Var.w1()));
                }
                if (q3Var.U0()) {
                    t(sbE, 1, "dynamite_version", Long.valueOf(q3Var.p1()));
                }
                if (q3Var.p0()) {
                    t(sbE, 1, "config_version", Long.valueOf(q3Var.n1()));
                }
                t(sbE, 1, "gmp_app_id", q3Var.y());
                t(sbE, 1, "admob_app_id", q3Var.B1());
                t(sbE, 1, "app_id", q3Var.C1());
                t(sbE, 1, "app_version", q3Var.s());
                if (q3Var.n0()) {
                    t(sbE, 1, "app_version_major", Integer.valueOf(q3Var.Q()));
                }
                t(sbE, 1, "firebase_instance_id", q3Var.w());
                if (q3Var.T0()) {
                    t(sbE, 1, "dev_cert_hash", Long.valueOf(q3Var.o1()));
                }
                t(sbE, 1, "app_store", q3Var.r());
                if (q3Var.f1()) {
                    t(sbE, 1, "upload_timestamp_millis", Long.valueOf(q3Var.v1()));
                }
                if (q3Var.d1()) {
                    t(sbE, 1, "start_timestamp_millis", Long.valueOf(q3Var.u1()));
                }
                if (q3Var.V0()) {
                    t(sbE, 1, "end_timestamp_millis", Long.valueOf(q3Var.q1()));
                }
                if (q3Var.Z0()) {
                    t(sbE, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(q3Var.t1()));
                }
                if (q3Var.Y0()) {
                    t(sbE, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(q3Var.s1()));
                }
                t(sbE, 1, "app_instance_id", q3Var.D1());
                t(sbE, 1, "resettable_device_id", q3Var.C());
                t(sbE, 1, "ds_id", q3Var.v());
                if (q3Var.X0()) {
                    t(sbE, 1, "limited_ad_tracking", Boolean.valueOf(q3Var.k0()));
                }
                t(sbE, 1, "os_version", q3Var.A());
                t(sbE, 1, "device_model", q3Var.u());
                t(sbE, 1, "user_default_language", q3Var.D());
                if (q3Var.e1()) {
                    t(sbE, 1, "time_zone_offset_minutes", Integer.valueOf(q3Var.k1()));
                }
                if (q3Var.o0()) {
                    t(sbE, 1, "bundle_sequential_index", Integer.valueOf(q3Var.Q0()));
                }
                if (q3Var.c1()) {
                    t(sbE, 1, "service_upload", Boolean.valueOf(q3Var.l0()));
                }
                t(sbE, 1, "health_monitor", q3Var.z());
                i4 i4Var = (i4) this.f2115a;
                if (!i4Var.f1633g.p(null, r2.f1911l0) && q3Var.m0() && q3Var.m1() != 0) {
                    t(sbE, 1, "android_id", Long.valueOf(q3Var.m1()));
                }
                if (q3Var.b1()) {
                    t(sbE, 1, "retry_counter", Integer.valueOf(q3Var.j1()));
                }
                if (q3Var.q0()) {
                    t(sbE, 1, "consent_signals", q3Var.t());
                }
                com.google.android.gms.internal.measurement.w6<com.google.android.gms.internal.measurement.a4> w6VarG = q3Var.G();
                if (w6VarG != null) {
                    for (com.google.android.gms.internal.measurement.a4 a4Var : w6VarG) {
                        if (a4Var != null) {
                            q(sbE, 2);
                            sbE.append("user_property {\n");
                            t(sbE, 2, "set_timestamp_millis", a4Var.I() ? Long.valueOf(a4Var.t()) : null);
                            t(sbE, 2, "name", i4Var.f1639n.f(a4Var.w()));
                            t(sbE, 2, "string_value", a4Var.x());
                            t(sbE, 2, "int_value", a4Var.H() ? Long.valueOf(a4Var.s()) : null);
                            t(sbE, 2, "double_value", a4Var.G() ? Double.valueOf(a4Var.r()) : null);
                            q(sbE, 2);
                            sbE.append("}\n");
                        }
                    }
                }
                com.google.android.gms.internal.measurement.w6<com.google.android.gms.internal.measurement.d3> w6VarE = q3Var.E();
                if (w6VarE != null) {
                    for (com.google.android.gms.internal.measurement.d3 d3Var : w6VarE) {
                        if (d3Var != null) {
                            q(sbE, 2);
                            sbE.append("audience_membership {\n");
                            if (d3Var.B()) {
                                t(sbE, 2, "audience_id", Integer.valueOf(d3Var.r()));
                            }
                            if (d3Var.C()) {
                                t(sbE, 2, "new_audience", Boolean.valueOf(d3Var.A()));
                            }
                            s(sbE, "current_data", d3Var.u());
                            if (d3Var.D()) {
                                s(sbE, "previous_data", d3Var.v());
                            }
                            q(sbE, 2);
                            sbE.append("}\n");
                        }
                    }
                }
                com.google.android.gms.internal.measurement.w6<com.google.android.gms.internal.measurement.h3> w6VarF = q3Var.F();
                if (w6VarF != null) {
                    for (com.google.android.gms.internal.measurement.h3 h3Var : w6VarF) {
                        if (h3Var != null) {
                            q(sbE, 2);
                            sbE.append("event {\n");
                            t(sbE, 2, "name", i4Var.f1639n.d(h3Var.y()));
                            if (h3Var.K()) {
                                t(sbE, 2, "timestamp_millis", Long.valueOf(h3Var.u()));
                            }
                            if (h3Var.J()) {
                                t(sbE, 2, "previous_timestamp_millis", Long.valueOf(h3Var.t()));
                            }
                            if (h3Var.I()) {
                                t(sbE, 2, "count", Integer.valueOf(h3Var.r()));
                            }
                            if (h3Var.s() != 0) {
                                o(sbE, 2, h3Var.z());
                            }
                            q(sbE, 2);
                            sbE.append("}\n");
                        }
                    }
                }
                q(sbE, 1);
                sbE.append("}\n");
            }
        }
        sbE.append("}\n");
        return sbE.toString();
    }

    public final String C(com.google.android.gms.internal.measurement.o2 o2Var) {
        StringBuilder sbE = androidx.constraintlayout.core.a.e("\nproperty_filter {\n");
        if (o2Var.A()) {
            t(sbE, 0, "filter_id", Integer.valueOf(o2Var.r()));
        }
        t(sbE, 0, "property_name", ((i4) this.f2115a).f1639n.f(o2Var.v()));
        String strR = r(o2Var.x(), o2Var.y(), o2Var.z());
        if (!strR.isEmpty()) {
            t(sbE, 0, "filter_type", strR);
        }
        p(sbE, 1, o2Var.s());
        sbE.append("}\n");
        return sbE.toString();
    }

    public final List E(com.google.android.gms.internal.measurement.v6 v6Var, List list) {
        int r92;
        ArrayList arrayList = new ArrayList(v6Var);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int r12 = num.intValue();
            z4 z4Var = this.f2115a;
            if (r12 < 0) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.b(num, "Ignoring negative bit index to be cleared");
            } else {
                int r13 = num.intValue() / 64;
                if (r13 >= arrayList.size()) {
                    e3 e3Var2 = ((i4) z4Var).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f1508j.c(num, "Ignoring bit index greater than bitSet size", Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(r13, Long.valueOf(((Long) arrayList.get(r13)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int r6 = size2;
            r92 = size;
            size = r6;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, r92);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x000d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x000d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap G(android.os.Bundle r11, boolean r12) {
        /*
            r10 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto La6
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r11.get(r2)
            com.google.android.gms.internal.measurement.qb.c()
            c5.z4 r4 = r10.f2115a
            c5.i4 r4 = (c5.i4) r4
            c5.e r4 = r4.f1633g
            r5 = 0
            c5.q2<java.lang.Boolean> r6 = c5.r2.f1923r0
            boolean r4 = r4.p(r5, r6)
            if (r4 == 0) goto L3c
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L49
            goto L4f
        L3c:
            boolean r4 = r3 instanceof android.os.Bundle[]
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L49
            goto L4f
        L49:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L4f:
            if (r12 == 0) goto Ld
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            boolean r5 = r3 instanceof android.os.Parcelable[]
            r6 = 0
            if (r5 == 0) goto L73
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r5 = r3.length
            r7 = 0
        L5f:
            if (r7 >= r5) goto La1
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L70
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.HashMap r8 = r10.G(r8, r6)
            r4.add(r8)
        L70:
            int r7 = r7 + 1
            goto L5f
        L73:
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 == 0) goto L94
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r5 = r3.size()
            r7 = 0
        L7e:
            if (r7 >= r5) goto La1
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L91
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.HashMap r8 = r10.G(r8, r6)
            r4.add(r8)
        L91:
            int r7 = r7 + 1
            goto L7e
        L94:
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto La1
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.HashMap r3 = r10.G(r3, r6)
            r4.add(r3)
        La1:
            r0.put(r2, r4)
            goto Ld
        La6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.q7.G(android.os.Bundle, boolean):java.util.HashMap");
    }

    public final void H(com.google.android.gms.internal.measurement.k3 k3Var, Object obj) {
        if (k3Var.f3643c) {
            k3Var.i();
            k3Var.f3643c = false;
        }
        com.google.android.gms.internal.measurement.l3.C((com.google.android.gms.internal.measurement.l3) k3Var.f3642b);
        if (k3Var.f3643c) {
            k3Var.i();
            k3Var.f3643c = false;
        }
        com.google.android.gms.internal.measurement.l3.E((com.google.android.gms.internal.measurement.l3) k3Var.f3642b);
        if (k3Var.f3643c) {
            k3Var.i();
            k3Var.f3643c = false;
        }
        com.google.android.gms.internal.measurement.l3.G((com.google.android.gms.internal.measurement.l3) k3Var.f3642b);
        if (k3Var.f3643c) {
            k3Var.i();
            k3Var.f3643c = false;
        }
        com.google.android.gms.internal.measurement.l3.J((com.google.android.gms.internal.measurement.l3) k3Var.f3642b);
        if (obj instanceof String) {
            k3Var.r((String) obj);
            return;
        }
        if (obj instanceof Long) {
            k3Var.p(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            k3Var.n(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.b(obj, "Ignoring invalid (type) event param value");
        } else {
            ArrayList arrayListD = D((Bundle[]) obj);
            if (k3Var.f3643c) {
                k3Var.i();
                k3Var.f3643c = false;
            }
            com.google.android.gms.internal.measurement.l3.I((com.google.android.gms.internal.measurement.l3) k3Var.f3642b, arrayListD);
        }
    }

    public final boolean J(long j10, long j11) {
        if (j10 == 0 || j11 <= 0) {
            return true;
        }
        ((i4) this.f2115a).f1640p.getClass();
        return Math.abs(System.currentTimeMillis() - j10) > j11;
    }

    public final byte[] L(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.b(e10, "Failed to gzip content");
            throw e10;
        }
    }

    @Override // c5.j7
    public final void e() {
    }

    public final void o(StringBuilder sb2, int r72, com.google.android.gms.internal.measurement.w6 w6Var) {
        if (w6Var == null) {
            return;
        }
        int r73 = r72 + 1;
        Iterator<E> it = w6Var.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.l3 l3Var = (com.google.android.gms.internal.measurement.l3) it.next();
            if (l3Var != null) {
                q(sb2, r73);
                sb2.append("param {\n");
                t(sb2, r73, "name", l3Var.N() ? ((i4) this.f2115a).f1639n.e(l3Var.x()) : null);
                t(sb2, r73, "string_value", l3Var.O() ? l3Var.y() : null);
                t(sb2, r73, "int_value", l3Var.M() ? Long.valueOf(l3Var.u()) : null);
                t(sb2, r73, "double_value", l3Var.K() ? Double.valueOf(l3Var.r()) : null);
                if (l3Var.t() > 0) {
                    o(sb2, r73, l3Var.z());
                }
                q(sb2, r73);
                sb2.append("}\n");
            }
        }
    }

    public final void p(StringBuilder sb2, int r72, com.google.android.gms.internal.measurement.j2 j2Var) {
        String str;
        if (j2Var == null) {
            return;
        }
        q(sb2, r72);
        sb2.append("filter {\n");
        if (j2Var.y()) {
            t(sb2, r72, "complement", Boolean.valueOf(j2Var.x()));
        }
        if (j2Var.A()) {
            t(sb2, r72, "param_name", ((i4) this.f2115a).f1639n.e(j2Var.v()));
        }
        if (j2Var.B()) {
            int r02 = r72 + 1;
            com.google.android.gms.internal.measurement.r2 r2VarU = j2Var.u();
            if (r2VarU != null) {
                q(sb2, r02);
                sb2.append("string_filter {\n");
                if (r2VarU.z()) {
                    switch (r2VarU.A()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    t(sb2, r02, "match_type", str);
                }
                if (r2VarU.y()) {
                    t(sb2, r02, "expression", r2VarU.u());
                }
                if (r2VarU.x()) {
                    t(sb2, r02, "case_sensitive", Boolean.valueOf(r2VarU.w()));
                }
                if (r2VarU.r() > 0) {
                    q(sb2, r02 + 1);
                    sb2.append("expression_list {\n");
                    for (String str2 : r2VarU.v()) {
                        q(sb2, r02 + 2);
                        sb2.append(str2);
                        sb2.append("\n");
                    }
                    sb2.append("}\n");
                }
                q(sb2, r02);
                sb2.append("}\n");
            }
        }
        if (j2Var.z()) {
            u(sb2, r72 + 1, "number_filter", j2Var.t());
        }
        q(sb2, r72);
        sb2.append("}\n");
    }

    @WorkerThread
    public final long w(byte[] bArr) throws NoSuchAlgorithmException {
        i4 i4Var = (i4) this.f2115a;
        v7 v7Var = i4Var.f1638m;
        i4.c(v7Var);
        v7Var.b();
        MessageDigest messageDigestO = v7.o();
        if (messageDigestO != null) {
            return v7.k0(messageDigestO.digest(bArr));
        }
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f.a("Failed to get MD5");
        return 0L;
    }

    public final Bundle x(Map<String, Object> map, boolean z10) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z10) {
                qb.c();
                ArrayList arrayList = (ArrayList) obj;
                if (((i4) this.f2115a).f1633g.p(null, r2.f1923r0)) {
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    for (int r72 = 0; r72 < size; r72++) {
                        arrayList2.add(x((Map) arrayList.get(r72), false));
                    }
                    bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                } else {
                    ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
                    int size2 = arrayList.size();
                    for (int r73 = 0; r73 < size2; r73++) {
                        arrayList3.add(x((Map) arrayList.get(r73), false));
                    }
                    bundle.putParcelableArrayList(str, arrayList3);
                }
            }
        }
        return bundle;
    }

    public final <T extends Parcelable> T y(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } catch (b.a unused) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    public final s z(com.google.android.gms.internal.measurement.b bVar) {
        Object obj;
        Bundle bundleX = x(bVar.f3381c, true);
        String string = (!bundleX.containsKey("_o") || (obj = bundleX.get("_o")) == null) ? "app" : obj.toString();
        String strH0 = b8.f.H0(a6.a.f112c, bVar.f3379a, a6.a.f114e);
        if (strH0 == null) {
            strH0 = bVar.f3379a;
        }
        return new s(strH0, new q(bundleX), string, bVar.f3380b);
    }
}
