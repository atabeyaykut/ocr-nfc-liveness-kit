package c5;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.google.android.gms.internal.measurement.q9;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import l9.h;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.jmrtd.lds.iso19794.IrisImageInfo;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;

/* loaded from: classes.dex */
public /* synthetic */ class w implements p2, c6.h, h5.b, l7.j, w3.a {

    /* renamed from: c, reason: collision with root package name */
    public static cg.e f2084c;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ w f2082a = new w();

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f2083b = {"android.permission.CAMERA"};

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ w f2085d = new w();

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ w f2086e = new w();
    public static final w f = new w();

    /* renamed from: g, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2087g = new kotlinx.coroutines.internal.u("RESUME_TOKEN");

    /* renamed from: h, reason: collision with root package name */
    public static final w f2088h = new w();

    public static boolean A(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static final void B(LoginActivity loginActivity, int r32) {
        kotlin.jvm.internal.h.f(loginActivity, "<this>");
        String[] strArr = f2083b;
        if (td.a.a(loginActivity, (String[]) Arrays.copyOf(strArr, 1))) {
            loginActivity.C(r32);
        } else {
            f2084c = new cg.e(loginActivity, r32);
            ActivityCompat.requestPermissions(loginActivity, strArr, 0);
        }
    }

    public static final void C(Object[] objArr, int r22, int r32) {
        kotlin.jvm.internal.h.f(objArr, "<this>");
        while (r22 < r32) {
            objArr[r22] = null;
            r22++;
        }
    }

    public static final int D(double d10) {
        if (Double.isNaN(d10)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d10 > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d10 < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d10);
    }

    public static final Object E(Set set, Enum r22, Enum r32, Object obj, boolean z10) {
        if (!z10) {
            if (obj != null) {
                set = m9.t.y1(m9.g0.G(set, obj));
            }
            return m9.t.q1(set);
        }
        Enum r12 = set.contains(r22) ? r22 : set.contains(r32) ? r32 : null;
        if (kotlin.jvm.internal.h.a(r12, r22) && kotlin.jvm.internal.h.a(obj, r32)) {
            return null;
        }
        return obj == null ? r12 : obj;
    }

    public static final void F(Object obj) throws Throwable {
        if (obj instanceof h.a) {
            throw ((h.a) obj).f9584a;
        }
    }

    public static final List G(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? Collections.unmodifiableList(new ArrayList(list)) : Collections.singletonList(m9.t.a1(list)) : m9.v.f10173a;
    }

    public static final Map H(Map map) {
        int size = map.size();
        if (size == 0) {
            return m9.w.f10174a;
        }
        if (size != 1) {
            return Collections.unmodifiableMap(new LinkedHashMap(map));
        }
        Map.Entry entry = (Map.Entry) m9.t.Z0(map.entrySet());
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }

    public static double I(double d10) {
        if (Double.isNaN(d10)) {
            return 0.0d;
        }
        if (Double.isInfinite(d10) || d10 == 0.0d || d10 == 0.0d) {
            return d10;
        }
        return Math.floor(Math.abs(d10)) * (d10 > 0.0d ? 1 : -1);
    }

    public static int J(int r52) {
        int[] r12 = {1, 2, 3};
        for (int r22 = 0; r22 < 3; r22++) {
            int r32 = r12[r22];
            int r42 = r32 - 1;
            if (r32 == 0) {
                throw null;
            }
            if (r42 == r52) {
                return r32;
            }
        }
        return 1;
    }

    public static long K(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static String L(com.google.android.gms.internal.measurement.v5 v5Var) {
        String str;
        StringBuilder sb2 = new StringBuilder(v5Var.m());
        for (int r12 = 0; r12 < v5Var.m(); r12++) {
            int r22 = v5Var.h(r12);
            if (r22 == 34) {
                str = "\\\"";
            } else if (r22 == 39) {
                str = "\\'";
            } else if (r22 != 92) {
                switch (r22) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (r22 < 32 || r22 > 126) {
                            sb2.append('\\');
                            sb2.append((char) (((r22 >>> 6) & 3) + 48));
                            sb2.append((char) (((r22 >>> 3) & 7) + 48));
                            r22 = (r22 & 7) + 48;
                        }
                        sb2.append((char) r22);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public static String M(String str, Object... objArr) {
        int length;
        int length2;
        int r42;
        String string;
        int r02 = 0;
        int r12 = 0;
        while (true) {
            length = objArr.length;
            if (r12 >= length) {
                break;
            }
            Object obj = objArr[r12];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e10) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(str2), (Throwable) e10);
                    StringBuilder sbL = android.support.v4.media.a.l("<", str2, " threw ");
                    sbL.append(e10.getClass().getName());
                    sbL.append(">");
                    string = sbL.toString();
                }
            }
            objArr[r12] = string;
            r12++;
        }
        StringBuilder sb2 = new StringBuilder((length * 16) + str.length());
        int r22 = 0;
        while (true) {
            length2 = objArr.length;
            if (r02 >= length2 || (r42 = str.indexOf("%s", r22)) == -1) {
                break;
            }
            sb2.append((CharSequence) str, r22, r42);
            sb2.append(objArr[r02]);
            r22 = r42 + 2;
            r02++;
        }
        sb2.append((CharSequence) str, r22, str.length());
        if (r02 < length2) {
            sb2.append(" [");
            sb2.append(objArr[r02]);
            for (int r11 = r02 + 1; r11 < objArr.length; r11++) {
                sb2.append(", ");
                sb2.append(objArr[r11]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    public static void N(int r6, int r72) {
        String strA;
        if (r6 < 0 || r6 >= r72) {
            if (r6 < 0) {
                strA = r4.r6.a("%s (%s) must not be negative", "index", Integer.valueOf(r6));
            } else {
                if (r72 < 0) {
                    throw new IllegalArgumentException(androidx.appcompat.widget.v.c(26, "negative size: ", r72));
                }
                strA = r4.r6.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(r6), Integer.valueOf(r72));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void O(Object[] objArr, int r32) {
        for (int r02 = 0; r02 < r32; r02++) {
            if (objArr[r02] == null) {
                throw new NullPointerException(androidx.appcompat.widget.v.c(20, "at index ", r02));
            }
        }
    }

    public static boolean P(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof s4.q0) {
            collection = ((s4.q0) collection).a();
        }
        boolean zRemove = false;
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                zRemove |= set.remove(it.next());
            }
            return zRemove;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                zRemove = true;
            }
        }
        return zRemove;
    }

    public static int Q(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10) || d10 == 0.0d) {
            return 0;
        }
        return (int) ((Math.floor(Math.abs(d10)) * (d10 > 0.0d ? 1 : -1)) % 4.294967296E9d);
    }

    public static String R(int r12) {
        if (r12 == 0) {
            return "GRANULARITY_PERMISSION_LEVEL";
        }
        if (r12 == 1) {
            return "GRANULARITY_COARSE";
        }
        if (r12 == 2) {
            return "GRANULARITY_FINE";
        }
        throw new IllegalArgumentException();
    }

    public static void S(int r22, int r32) {
        if (r22 < 0 || r22 > r32) {
            throw new IndexOutOfBoundsException(W(r22, r32, "index"));
        }
    }

    public static void T(int r22, int r32, int r42) {
        if (r22 < 0 || r32 < r22 || r32 > r42) {
            throw new IndexOutOfBoundsException((r22 < 0 || r22 > r42) ? W(r22, r42, "start index") : (r32 < 0 || r32 > r42) ? W(r32, r42, "end index") : r4.r6.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(r32), Integer.valueOf(r22)));
        }
    }

    public static void U(com.google.android.gms.internal.measurement.s3 s3Var) {
        int r12 = Q(s3Var.d("runtime.counter").i().doubleValue() + 1.0d);
        if (r12 > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        s3Var.f("runtime.counter", new com.google.android.gms.internal.measurement.i(Double.valueOf(r12)));
    }

    public static long V(double d10) {
        return Q(d10) & BodyPartID.bodyIdMax;
    }

    public static String W(int r42, int r52, String str) {
        if (r42 < 0) {
            return r4.r6.a("%s (%s) must not be negative", str, Integer.valueOf(r42));
        }
        if (r52 >= 0) {
            return r4.r6.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(r42), Integer.valueOf(r52));
        }
        throw new IllegalArgumentException(androidx.appcompat.widget.v.c(26, "negative size: ", r52));
    }

    public static int X(int r12) {
        return (-(r12 & 1)) ^ (r12 >>> 1);
    }

    public static com.google.android.gms.internal.measurement.h0 Y(String str) {
        com.google.android.gms.internal.measurement.h0 h0Var = (str == null || str.isEmpty()) ? null : (com.google.android.gms.internal.measurement.h0) com.google.android.gms.internal.measurement.h0.D0.get(Integer.valueOf(Integer.parseInt(str)));
        if (h0Var != null) {
            return h0Var;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static Object Z(com.google.android.gms.internal.measurement.p pVar) {
        if (com.google.android.gms.internal.measurement.p.f3669o.equals(pVar)) {
            return null;
        }
        if (com.google.android.gms.internal.measurement.p.f3668i.equals(pVar)) {
            return "";
        }
        if (pVar instanceof com.google.android.gms.internal.measurement.m) {
            return a0((com.google.android.gms.internal.measurement.m) pVar);
        }
        if (!(pVar instanceof com.google.android.gms.internal.measurement.f)) {
            return !pVar.i().isNaN() ? pVar.i() : pVar.h();
        }
        ArrayList arrayList = new ArrayList();
        com.google.android.gms.internal.measurement.f fVar = (com.google.android.gms.internal.measurement.f) pVar;
        fVar.getClass();
        int r12 = 0;
        while (true) {
            if (!(r12 < fVar.y())) {
                return arrayList;
            }
            if (r12 >= fVar.y()) {
                throw new NoSuchElementException(androidx.appcompat.widget.v.c(32, "Out of bounds index: ", r12));
            }
            int r22 = r12 + 1;
            Object objZ = Z(fVar.z(r12));
            if (objZ != null) {
                arrayList.add(objZ);
            }
            r12 = r22;
        }
    }

    public static HashMap a0(com.google.android.gms.internal.measurement.m mVar) {
        HashMap map = new HashMap();
        mVar.getClass();
        Iterator it = new ArrayList(mVar.f3622a.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Object objZ = Z(mVar.x(str));
            if (objZ != null) {
                map.put(str, objZ);
            }
        }
        return map;
    }

    public static final Object[] b(int r12) {
        if (r12 >= 0) {
            return new Object[r12];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    public static void b0(String str, int r42, List list) {
        if (list.size() != r42) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(r42), Integer.valueOf(list.size())));
        }
    }

    public static void c0(String str, int r42, List list) {
        if (list.size() < r42) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(r42), Integer.valueOf(list.size())));
        }
    }

    public static int d(float f10) {
        return ((int) (f10 + 16384.999999999996d)) - 16384;
    }

    public static void d0(String str, int r42, ArrayList arrayList) {
        if (arrayList.size() > r42) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(r42), Integer.valueOf(arrayList.size())));
        }
    }

    public static void e(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean e0(com.google.android.gms.internal.measurement.p pVar) {
        if (pVar == null) {
            return false;
        }
        Double dI = pVar.i();
        return !dI.isNaN() && dI.doubleValue() >= 0.0d && dI.equals(Double.valueOf(Math.floor(dI.doubleValue())));
    }

    public static final void f(int r32, int r42) {
        if (r32 <= r42) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + r32 + ") is greater than size (" + r42 + ").");
    }

    public static boolean f0(com.google.android.gms.internal.measurement.p pVar, com.google.android.gms.internal.measurement.p pVar2) {
        if (!pVar.getClass().equals(pVar2.getClass())) {
            return false;
        }
        if ((pVar instanceof com.google.android.gms.internal.measurement.u) || (pVar instanceof com.google.android.gms.internal.measurement.n)) {
            return true;
        }
        if (!(pVar instanceof com.google.android.gms.internal.measurement.i)) {
            return pVar instanceof com.google.android.gms.internal.measurement.t ? pVar.h().equals(pVar2.h()) : pVar instanceof com.google.android.gms.internal.measurement.g ? pVar.l().equals(pVar2.l()) : pVar == pVar2;
        }
        if (Double.isNaN(pVar.i().doubleValue()) || Double.isNaN(pVar2.i().doubleValue())) {
            return false;
        }
        return pVar.i().equals(pVar2.i());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final p9.d g(Object obj, p9.d completion, x9.p pVar) {
        kotlin.jvm.internal.h.f(pVar, "<this>");
        kotlin.jvm.internal.h.f(completion, "completion");
        if (pVar instanceof r9.a) {
            return ((r9.a) pVar).create(obj, completion);
        }
        p9.f context = completion.getContext();
        return context == p9.g.f12870a ? new q9.b(obj, completion, pVar) : new q9.c(completion, context, pVar, obj);
    }

    public static final h.a j(Throwable exception) {
        kotlin.jvm.internal.h.f(exception, "exception");
        return new h.a(exception);
    }

    public static void l(Object obj, String str, String str2) {
        Log.d(u(str), String.format(str2, obj));
    }

    public static byte[] m(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("value must be a block.");
        }
        byte[] bArr2 = new byte[16];
        for (int r32 = 0; r32 < 16; r32++) {
            byte b10 = (byte) ((bArr[r32] << 1) & IrisImageInfo.IMAGE_QUAL_UNDEF);
            bArr2[r32] = b10;
            if (r32 < 15) {
                bArr2[r32] = (byte) (((byte) ((bArr[r32 + 1] >> 7) & 1)) | b10);
            }
        }
        bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
        return bArr2;
    }

    public static final float n(View dp, int r22) {
        kotlin.jvm.internal.h.g(dp, "$this$dp");
        Resources resources = dp.getResources();
        kotlin.jvm.internal.h.b(resources, "resources");
        return TypedValue.applyDimension(1, r22, resources.getDisplayMetrics());
    }

    public static final Class o(Class factoryCompanion) {
        Class<?> cls;
        kotlin.jvm.internal.h.f(factoryCompanion, "$this$factoryCompanion");
        Class<?>[] declaredClasses = factoryCompanion.getDeclaredClasses();
        kotlin.jvm.internal.h.e(declaredClasses, "declaredClasses");
        int length = declaredClasses.length;
        int r12 = 0;
        while (true) {
            if (r12 >= length) {
                cls = null;
                break;
            }
            cls = declaredClasses[r12];
            if (r0.r0.class.isAssignableFrom(cls)) {
                break;
            }
            r12++;
        }
        if (cls != null) {
            return cls;
        }
        return null;
    }

    public static int p(float f10) {
        return ((int) (f10 + 16384.0d)) - 16384;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String q(android.net.Uri r5) {
        /*
            java.lang.String r0 = "."
            r1 = 1
            java.lang.String r5 = r5.getPath()     // Catch: java.lang.Exception -> L20
            if (r5 == 0) goto L20
            r2 = 6
            int r3 = mc.n.Q(r5, r0, r2)     // Catch: java.lang.Exception -> L20
            r4 = -1
            if (r3 == r4) goto L20
            int r2 = mc.n.Q(r5, r0, r2)     // Catch: java.lang.Exception -> L20
            int r2 = r2 + r1
            java.lang.String r5 = r5.substring(r2)     // Catch: java.lang.Exception -> L20
            java.lang.String r2 = "(this as java.lang.String).substring(startIndex)"
            kotlin.jvm.internal.h.e(r5, r2)     // Catch: java.lang.Exception -> L20
            goto L21
        L20:
            r5 = 0
        L21:
            if (r5 == 0) goto L2d
            int r2 = r5.length()
            if (r2 != 0) goto L2a
            goto L2b
        L2a:
            r1 = 0
        L2b:
            if (r1 == 0) goto L2f
        L2d:
            java.lang.String r5 = "jpg"
        L2f:
            java.lang.String r5 = r0.concat(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.w.q(android.net.Uri):java.lang.String");
    }

    public static File r(File fileDir, String str) throws IOException {
        kotlin.jvm.internal.h.f(fileDir, "fileDir");
        if (str == null) {
            str = ".jpg";
        }
        try {
            String str2 = new SimpleDateFormat("yyyyMMdd_HHmmssSSS", Locale.getDefault()).format(new Date());
            kotlin.jvm.internal.h.e(str2, "SimpleDateFormat(timeFor…Default()).format(Date())");
            String str3 = "IMG_".concat(str2) + str;
            if (!fileDir.exists()) {
                fileDir.mkdirs();
            }
            File file = new File(fileDir, str3);
            file.createNewFile();
            return file;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String s(int r42, int[] r52, String[] strArr, int[] r72) {
        StringBuilder sb2 = new StringBuilder("$");
        for (int r12 = 0; r12 < r42; r12++) {
            int r22 = r52[r12];
            if (r22 == 1 || r22 == 2) {
                sb2.append('[');
                sb2.append(r72[r12]);
                sb2.append(']');
            } else if (r22 == 3 || r22 == 4 || r22 == 5) {
                sb2.append('.');
                String str = strArr[r12];
                if (str != null) {
                    sb2.append(str);
                }
            }
        }
        return sb2.toString();
    }

    public static final int t(int r12, int r22, int r32) {
        if (r32 > 0) {
            if (r12 >= r22) {
                return r22;
            }
            int r02 = r22 % r32;
            if (r02 < 0) {
                r02 += r32;
            }
            int r13 = r12 % r32;
            if (r13 < 0) {
                r13 += r32;
            }
            int r03 = (r02 - r13) % r32;
            if (r03 < 0) {
                r03 += r32;
            }
            return r22 - r03;
        }
        if (r32 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        }
        if (r12 <= r22) {
            return r22;
        }
        int r33 = -r32;
        int r14 = r12 % r33;
        if (r14 < 0) {
            r14 += r33;
        }
        int r04 = r22 % r33;
        if (r04 < 0) {
            r04 += r33;
        }
        int r15 = (r14 - r04) % r33;
        if (r15 < 0) {
            r15 += r33;
        }
        return r22 + r15;
    }

    public static String u(String str) {
        return "TransportRuntime.".concat(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.fragment.app.Fragment] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.fragment.app.Fragment] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.app.Activity, androidx.fragment.app.FragmentActivity] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.app.Application] */
    /* JADX WARN: Type inference failed for: r0v7 */
    public static void v(Fragment fragment) {
        if (fragment == null) {
            throw new NullPointerException("fragment");
        }
        ?? parentFragment = fragment;
        while (true) {
            parentFragment = parentFragment.getParentFragment();
            if (parentFragment == 0) {
                parentFragment = fragment.getActivity();
                if (!(parentFragment instanceof t8.d)) {
                    if (!(parentFragment.getApplication() instanceof t8.d)) {
                        throw new IllegalArgumentException(String.format("No injector was found for %s", fragment.getClass().getCanonicalName()));
                    }
                    parentFragment = parentFragment.getApplication();
                }
            } else if (parentFragment instanceof t8.d) {
                break;
            }
        }
        t8.d dVar = (t8.d) parentFragment;
        if (Log.isLoggable("dagger.android.support", 3)) {
            Log.d("dagger.android.support", String.format("An injector for %s was found in %s", fragment.getClass().getCanonicalName(), dVar.getClass().getCanonicalName()));
        }
        t8.c cVarC = dVar.c();
        b8.f.o(cVarC, "%s.androidInjector() returned null", dVar.getClass());
        cVarC.a(fragment);
    }

    public static final Object w(Class cls) throws IllegalAccessException, InstantiationException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        kotlin.jvm.internal.h.e(declaredConstructors, "declaredConstructors");
        for (Constructor<?> it : declaredConstructors) {
            kotlin.jvm.internal.h.e(it, "it");
            if (it.getParameterTypes().length == 1) {
                Object objNewInstance = it.newInstance(null);
                kotlin.jvm.internal.h.e(objNewInstance, "declaredConstructors.fir… == 1 }.newInstance(null)");
                return objNewInstance;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    public static final p9.d x(p9.d dVar) {
        p9.d<Object> dVarIntercepted;
        kotlin.jvm.internal.h.f(dVar, "<this>");
        r9.c cVar = dVar instanceof r9.c ? (r9.c) dVar : null;
        return (cVar == null || (dVarIntercepted = cVar.intercepted()) == null) ? dVar : dVarIntercepted;
    }

    public static final void y(ArrayList invokeAll, v.e dialog) {
        kotlin.jvm.internal.h.g(invokeAll, "$this$invokeAll");
        kotlin.jvm.internal.h.g(dialog, "dialog");
        Iterator it = invokeAll.iterator();
        while (it.hasNext()) {
            ((x9.l) it.next()).invoke(dialog);
        }
    }

    public static final boolean z(Context context) {
        Context baseContext;
        if (context == null) {
            return true;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing()) {
                return true;
            }
            return activity.isDestroyed();
        }
        if (!(context instanceof ContextWrapper)) {
            context = null;
        }
        ContextWrapper contextWrapper = (ContextWrapper) context;
        if (contextWrapper == null || (baseContext = contextWrapper.getBaseContext()) == null) {
            return false;
        }
        return z(baseContext);
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().c());
    }

    @Override // h5.b
    public Object c(h5.k kVar) throws IOException {
        if (kVar.m()) {
            return (Bundle) kVar.i();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String strValueOf = String.valueOf(kVar.h());
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 22);
            sb2.append("Error making request: ");
            sb2.append(strValueOf);
            Log.d("Rpc", sb2.toString());
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", kVar.h());
    }

    @Override // l7.j
    public Object h() {
        return new TreeSet();
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return new d8.g((v7.h) yVar.a(v7.h.class));
    }

    public long k() {
        return System.currentTimeMillis();
    }
}
