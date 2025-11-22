package c5;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.measurement.xa;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public final class v7 extends y4 {

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f2077g = {"firebase_", "google_", "ga_"};

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f2078h = {"_err"};

    /* renamed from: c, reason: collision with root package name */
    public SecureRandom f2079c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicLong f2080d;

    /* renamed from: e, reason: collision with root package name */
    public int f2081e;
    public Integer f;

    public v7(i4 i4Var) {
        super(i4Var);
        this.f = null;
        this.f2080d = new AtomicLong(0L);
    }

    public static boolean Q(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public static boolean S(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean T(String str) {
        r3.r.f(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static boolean U(Context context) {
        ActivityInfo receiverInfo;
        r3.r.i(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean V(Context context) {
        r3.r.i(context);
        return d0(context, Build.VERSION.SDK_INT >= 24 ? "com.google.android.gms.measurement.AppMeasurementJobService" : "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static boolean W(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static boolean X(String str, String str2, String str3, String str4) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        if (!zIsEmpty && !zIsEmpty2) {
            r3.r.i(str);
            return !str.equals(str2);
        }
        if (zIsEmpty && zIsEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (zIsEmpty) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public static byte[] Y(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static final boolean Z(int r6, Bundle bundle) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", r6);
        return true;
    }

    public static boolean c0(String str, String[] strArr) {
        r3.r.i(strArr);
        for (String str2 : strArr) {
            if (W(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static long k0(byte[] bArr) {
        r3.r.i(bArr);
        int length = bArr.length;
        int r12 = 0;
        r3.r.l(length > 0);
        long j10 = 0;
        for (int r02 = length - 1; r02 >= 0 && r02 >= bArr.length - 8; r02--) {
            j10 += (bArr[r02] & 255) << r12;
            r12 += 8;
        }
        return j10;
    }

    public static String n(int r32, String str, boolean z10) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= r32) {
            return str;
        }
        if (z10) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, r32))).concat("...");
        }
        return null;
    }

    public static MessageDigest o() throws NoSuchAlgorithmException {
        MessageDigest messageDigest;
        for (int r02 = 0; r02 < 2; r02++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static ArrayList<Bundle> q(List<b> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (b bVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", bVar.f1400a);
            bundle.putString("origin", bVar.f1401b);
            bundle.putLong("creation_timestamp", bVar.f1403d);
            bundle.putString("name", bVar.f1402c.f1951b);
            Object objE = bVar.f1402c.E();
            r3.r.i(objE);
            a5.c(bundle, objE);
            bundle.putBoolean("active", bVar.f1404e);
            String str = bVar.f;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            s sVar = bVar.f1405g;
            if (sVar != null) {
                bundle.putString("timed_out_event_name", sVar.f1956a);
                q qVar = sVar.f1957b;
                if (qVar != null) {
                    bundle.putBundle("timed_out_event_params", qVar.E());
                }
            }
            bundle.putLong("trigger_timeout", bVar.f1406h);
            s sVar2 = bVar.f1407j;
            if (sVar2 != null) {
                bundle.putString("triggered_event_name", sVar2.f1956a);
                q qVar2 = sVar2.f1957b;
                if (qVar2 != null) {
                    bundle.putBundle("triggered_event_params", qVar2.E());
                }
            }
            bundle.putLong("triggered_timestamp", bVar.f1402c.f1952c);
            bundle.putLong("time_to_live", bVar.f1408k);
            s sVar3 = bVar.f1409l;
            if (sVar3 != null) {
                bundle.putString("expired_event_name", sVar3.f1956a);
                q qVar3 = sVar3.f1957b;
                if (qVar3 != null) {
                    bundle.putBundle("expired_event_params", qVar3.E());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    @WorkerThread
    public static void t(b6 b6Var, Bundle bundle, boolean z10) {
        if (bundle != null && b6Var != null) {
            if (!bundle.containsKey("_sc") || z10) {
                String str = b6Var.f1419a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = b6Var.f1420b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", b6Var.f1421c);
                return;
            }
            z10 = false;
        }
        if (bundle != null && b6Var == null && z10) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public static void w(u7 u7Var, String str, int r42, String str2, String str3, int r72) {
        Bundle bundle = new Bundle();
        Z(r42, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (r42 == 6 || r42 == 7 || r42 == 2) {
            bundle.putLong("_el", r72);
        }
        u7Var.a(str, bundle);
    }

    public final void A(com.google.android.gms.internal.measurement.y0 y0Var, Bundle bundle) {
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning bundle value to wrapper");
        }
    }

    public final void B(com.google.android.gms.internal.measurement.y0 y0Var, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning byte array to wrapper");
        }
    }

    public final void C(com.google.android.gms.internal.measurement.y0 y0Var, int r42) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", r42);
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning int value to wrapper");
        }
    }

    public final void D(com.google.android.gms.internal.measurement.y0 y0Var, long j10) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j10);
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning long value to wrapper");
        }
    }

    public final void E(String str, com.google.android.gms.internal.measurement.y0 y0Var) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning string value to wrapper");
        }
    }

    public final void F(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z10) {
        int r02;
        String str4;
        int r03;
        if (bundle == null) {
            return;
        }
        i4 i4Var = (i4) this.f2115a;
        i4Var.getClass();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int r16 = 0;
        while (it.hasNext()) {
            String str5 = (String) it.next();
            if (list == null || !list.contains(str5)) {
                r02 = !z10 ? h0(str5) : 0;
                if (r02 == 0) {
                    r02 = g0(str5);
                }
            } else {
                r02 = 0;
            }
            if (r02 != 0) {
                s(bundle, r02, str5, r02 == 3 ? str5 : null);
                bundle.remove(str5);
            } else {
                if (Q(bundle.get(str5))) {
                    e3 e3Var = i4Var.f1635j;
                    i4.e(e3Var);
                    e3Var.f1510l.d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                    r03 = 22;
                    str4 = str5;
                } else {
                    str4 = str5;
                    r03 = K(str, str2, str5, bundle.get(str5), bundle, list, z10, false);
                }
                if (r03 != 0 && !"_ev".equals(str4)) {
                    s(bundle, r03, str4, bundle.get(str4));
                } else if (T(str4) && !c0(str4, y.f2128e) && (r16 = r16 + 1) > 0) {
                    e3 e3Var2 = i4Var.f1635j;
                    i4.e(e3Var2);
                    e3Var2.f1507h.c(i4Var.f1639n.d(str2), "Item cannot contain custom parameters", i4Var.f1639n.b(bundle));
                    Z(23, bundle);
                }
                bundle.remove(str4);
            }
        }
    }

    public final boolean G(String str, String str2, String str3) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        z4 z4Var = this.f2115a;
        if (!zIsEmpty) {
            r3.r.i(str);
            if (str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                return true;
            }
            i4 i4Var = (i4) z4Var;
            if (TextUtils.isEmpty(i4Var.f1629b)) {
                e3 e3Var = i4Var.f1635j;
                i4.e(e3Var);
                e3Var.f1507h.b(e3.q(str), "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id");
            }
            return false;
        }
        xa.b();
        i4 i4Var2 = (i4) z4Var;
        if (i4Var2.f1633g.p(null, r2.f1894c0) && !TextUtils.isEmpty(str3)) {
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(i4Var2.f1629b)) {
                e3 e3Var2 = i4Var2.f1635j;
                i4.e(e3Var2);
                e3Var2.f1507h.a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        }
        r3.r.i(str2);
        if (str2.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
            return true;
        }
        e3 e3Var3 = i4Var2.f1635j;
        i4.e(e3Var3);
        e3Var3.f1507h.b(e3.q(str2), "Invalid admob_app_id. Analytics disabled.");
        return false;
    }

    public final boolean H(int r42, String str, String str2) {
        z4 z4Var = this.f2115a;
        if (str2 == null) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1507h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= r42) {
            return true;
        }
        e3 e3Var2 = ((i4) z4Var).f1635j;
        i4.e(e3Var2);
        e3Var2.f1507h.d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(r42), str2);
        return false;
    }

    public final boolean I(String str, String[] strArr, String[] strArr2, String str2) {
        z4 z4Var = this.f2115a;
        if (str2 == null) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1507h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        String[] strArr3 = f2077g;
        for (int r32 = 0; r32 < 3; r32++) {
            if (str2.startsWith(strArr3[r32])) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f1507h.c(str, "Name starts with reserved prefix. Type, name", str2);
                return false;
            }
        }
        if (strArr == null || !c0(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && c0(str2, strArr2)) {
            return true;
        }
        e3 e3Var3 = ((i4) z4Var).f1635j;
        i4.e(e3Var3);
        e3Var3.f1507h.c(str, "Name is reserved. Type, name", str2);
        return false;
    }

    public final boolean J(String str, String str2, int r6, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String string = obj.toString();
            if (string.codePointCount(0, string.length()) > r6) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1510l.d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(string.length()));
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int K(java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.Object r19, android.os.Bundle r20, java.util.List<java.lang.String> r21, boolean r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.v7.K(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    @WorkerThread
    public final void L() {
        b();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.a("Utils falling back to Random for random id");
            }
        }
        this.f2080d.set(jNextLong);
    }

    public final boolean M(String str, String str2) {
        z4 z4Var = this.f2115a;
        if (str2 == null) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1507h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f1507h.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int r22 = str2.codePointAt(0);
        if (!Character.isLetter(r22)) {
            if (r22 != 95) {
                e3 e3Var3 = ((i4) z4Var).f1635j;
                i4.e(e3Var3);
                e3Var3.f1507h.c(str, "Name must start with a letter or _ (underscore). Type, name", str2);
                return false;
            }
            r22 = 95;
        }
        int length = str2.length();
        int r23 = Character.charCount(r22);
        while (r23 < length) {
            int r52 = str2.codePointAt(r23);
            if (r52 != 95 && !Character.isLetterOrDigit(r52)) {
                e3 e3Var4 = ((i4) z4Var).f1635j;
                i4.e(e3Var4);
                e3Var4.f1507h.c(str, "Name must consist of letters, digits or _ (underscores). Type, name", str2);
                return false;
            }
            r23 += Character.charCount(r52);
        }
        return true;
    }

    public final boolean N(String str, String str2) {
        z4 z4Var = this.f2115a;
        if (str2 == null) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1507h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f1507h.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int r22 = str2.codePointAt(0);
        if (!Character.isLetter(r22)) {
            e3 e3Var3 = ((i4) z4Var).f1635j;
            i4.e(e3Var3);
            e3Var3.f1507h.c(str, "Name must start with a letter. Type, name", str2);
            return false;
        }
        int length = str2.length();
        int r23 = Character.charCount(r22);
        while (r23 < length) {
            int r42 = str2.codePointAt(r23);
            if (r42 != 95 && !Character.isLetterOrDigit(r42)) {
                e3 e3Var4 = ((i4) z4Var).f1635j;
                i4.e(e3Var4);
                e3Var4.f1507h.c(str, "Name must consist of letters, digits or _ (underscores). Type, name", str2);
                return false;
            }
            r23 += Character.charCount(r42);
        }
        return true;
    }

    @WorkerThread
    public final boolean O(String str) {
        b();
        i4 i4Var = (i4) this.f2115a;
        if (y3.c.a(i4Var.f1628a).f19314a.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f1512n.b(str, "Permission not granted");
        return false;
    }

    public final boolean P(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        i4 i4Var = (i4) this.f2115a;
        String strC = i4Var.f1633g.c("debug.firebase.analytics.app");
        i4Var.getClass();
        return strC.equals(str);
    }

    public final boolean R(Context context, String str) {
        e3 e3Var;
        String str2;
        Signature[] signatureArr;
        z4 z4Var = this.f2115a;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfoB = y3.c.a(context).b(64, str);
            if (packageInfoB == null || (signatureArr = packageInfoB.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e10) {
            e = e10;
            e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            str2 = "Package name not found";
            e3Var.f.b(e, str2);
            return true;
        } catch (CertificateException e11) {
            e = e11;
            e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            str2 = "Error obtaining certificate";
            e3Var.f.b(e, str2);
            return true;
        }
    }

    public final int a0(String str) {
        boolean zEquals = "_ldl".equals(str);
        z4 z4Var = this.f2115a;
        if (zEquals) {
            ((i4) z4Var).getClass();
            return 2048;
        }
        if ("_id".equals(str)) {
            ((i4) z4Var).getClass();
            return 256;
        }
        if (((i4) z4Var).f1633g.p(null, r2.f1892b0) && "_lgclid".equals(str)) {
            ((i4) z4Var).getClass();
            return 100;
        }
        ((i4) z4Var).getClass();
        return 36;
    }

    public final Object b0(int r32, Object obj, boolean z10, boolean z11) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return n(r32, obj.toString(), z10);
        }
        if (!z11 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleN0 = n0((Bundle) parcelable);
                if (!bundleN0.isEmpty()) {
                    arrayList.add(bundleN0);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    @Override // c5.y4
    public final boolean c() {
        return true;
    }

    public final int e0(Object obj, String str) {
        return J("_ldl".equals(str) ? "user property referrer" : "user property", str, a0(str), obj) ? 0 : 7;
    }

    public final int f0(String str) {
        if (!M(NotificationCompat.CATEGORY_EVENT, str)) {
            return 2;
        }
        if (!I(NotificationCompat.CATEGORY_EVENT, a6.a.f112c, a6.a.f113d, str)) {
            return 13;
        }
        ((i4) this.f2115a).getClass();
        return !H(40, NotificationCompat.CATEGORY_EVENT, str) ? 2 : 0;
    }

    public final Object g(Object obj, String str) {
        boolean zEquals = "_ev".equals(str);
        z4 z4Var = this.f2115a;
        if (zEquals) {
            ((i4) z4Var).getClass();
            return b0(256, obj, true, true);
        }
        boolean zS = S(str);
        ((i4) z4Var).getClass();
        return b0(zS ? 256 : 100, obj, false, true);
    }

    public final int g0(String str) {
        if (!M("event param", str)) {
            return 3;
        }
        if (!I("event param", null, null, str)) {
            return 14;
        }
        ((i4) this.f2115a).getClass();
        return !H(40, "event param", str) ? 3 : 0;
    }

    public final Object h(Object obj, String str) {
        boolean zEquals = "_ldl".equals(str);
        int r42 = a0(str);
        return zEquals ? b0(r42, obj, true, false) : b0(r42, obj, false, false);
    }

    public final int h0(String str) {
        if (!N("event param", str)) {
            return 3;
        }
        if (!I("event param", null, null, str)) {
            return 14;
        }
        ((i4) this.f2115a).getClass();
        return !H(40, "event param", str) ? 3 : 0;
    }

    public final int i0(String str) {
        if (!M("user property", str)) {
            return 6;
        }
        if (!I("user property", u.f2014b, null, str)) {
            return 15;
        }
        ((i4) this.f2115a).getClass();
        return !H(24, "user property", str) ? 6 : 0;
    }

    @EnsuresNonNull({"this.apkVersion"})
    public final int j0() {
        if (this.f == null) {
            m3.f fVar = m3.f.f9946b;
            Context context = ((i4) this.f2115a).f1628a;
            fVar.getClass();
            this.f = Integer.valueOf(m3.f.a(context) / 1000);
        }
        return this.f.intValue();
    }

    public final long l0() {
        long j10 = this.f2080d.get();
        synchronized (this.f2080d) {
            if (j10 != 0) {
                this.f2080d.compareAndSet(-1L, 1L);
                return this.f2080d.getAndIncrement();
            }
            long jNanoTime = System.nanoTime();
            ((i4) this.f2115a).f1640p.getClass();
            long jNextLong = new Random(jNanoTime ^ System.currentTimeMillis()).nextLong();
            int r32 = this.f2081e + 1;
            this.f2081e = r32;
            return jNextLong + r32;
        }
    }

    public final Bundle m0(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    queryParameter = uri.getQueryParameter("utm_campaign");
                    queryParameter2 = uri.getQueryParameter("utm_source");
                    queryParameter3 = uri.getQueryParameter("utm_medium");
                    queryParameter4 = uri.getQueryParameter("gclid");
                } else {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    queryParameter4 = null;
                }
                if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("campaign", queryParameter);
                }
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString("source", queryParameter2);
                }
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("medium", queryParameter3);
                }
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("gclid", queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("term", queryParameter5);
                }
                String queryParameter6 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter6)) {
                    bundle.putString("content", queryParameter6);
                }
                String queryParameter7 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter7)) {
                    bundle.putString("aclid", queryParameter7);
                }
                String queryParameter8 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter8)) {
                    bundle.putString("cp1", queryParameter8);
                }
                String queryParameter9 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter9)) {
                    bundle.putString("anid", queryParameter9);
                }
                return bundle;
            } catch (UnsupportedOperationException e10) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.b(e10, "Install referrer url isn't a hierarchical URI");
            }
        }
        return null;
    }

    public final Bundle n0(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objG = g(bundle.get(str), str);
                if (objG == null) {
                    z4 z4Var = this.f2115a;
                    e3 e3Var = ((i4) z4Var).f1635j;
                    i4.e(e3Var);
                    e3Var.f1510l.b(((i4) z4Var).f1639n.e(str), "Param value can't be null");
                } else {
                    x(bundle2, str, objG);
                }
            }
        }
        return bundle2;
    }

    public final Bundle o0(String str, String str2, Bundle bundle, List<String> list, boolean z10) {
        int r02;
        int r12;
        String str3;
        i4 i4Var;
        String str4 = str2;
        List<String> list2 = list;
        boolean zC0 = c0(str4, a6.a.f);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        i4 i4Var2 = (i4) this.f2115a;
        int r72 = i4Var2.f1633g.d();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int r18 = 0;
        while (it.hasNext()) {
            String str5 = (String) it.next();
            if (list2 == null || !list2.contains(str5)) {
                r02 = !z10 ? h0(str5) : 0;
                if (r02 == 0) {
                    r02 = g0(str5);
                }
            } else {
                r02 = 0;
            }
            if (r02 != 0) {
                s(bundle2, r02, str5, r02 == 3 ? str5 : null);
                bundle2.remove(str5);
                r12 = r72;
                i4Var = i4Var2;
                str3 = str4;
            } else {
                r12 = r72;
                i4 i4Var3 = i4Var2;
                int r03 = K(str, str2, str5, bundle.get(str5), bundle2, list, z10, zC0);
                if (r03 == 17) {
                    s(bundle2, 17, str5, Boolean.FALSE);
                } else {
                    if (r03 != 0 && !"_ev".equals(str5)) {
                        s(bundle2, r03, r03 == 21 ? str2 : str5, bundle.get(str5));
                        bundle2.remove(str5);
                    }
                    str3 = str2;
                    i4Var = i4Var3;
                }
                if (T(str5)) {
                    int r04 = r18 + 1;
                    if (r04 > r12) {
                        StringBuilder sb2 = new StringBuilder(48);
                        sb2.append("Event can't contain more than ");
                        sb2.append(r12);
                        sb2.append(" params");
                        e3 e3Var = i4Var3.f1635j;
                        i4.e(e3Var);
                        str3 = str2;
                        i4Var = i4Var3;
                        e3Var.f1507h.c(i4Var3.f1639n.d(str3), sb2.toString(), i4Var.f1639n.b(bundle));
                        Z(5, bundle2);
                        bundle2.remove(str5);
                    } else {
                        str3 = str2;
                        i4Var = i4Var3;
                    }
                    r18 = r04;
                } else {
                    str3 = str2;
                    i4Var = i4Var3;
                }
            }
            str4 = str3;
            i4Var2 = i4Var;
            r72 = r12;
            list2 = list;
        }
        return bundle2;
    }

    @EnsuresNonNull({"this.secureRandom"})
    @WorkerThread
    public final SecureRandom p() {
        b();
        if (this.f2079c == null) {
            this.f2079c = new SecureRandom();
        }
        return this.f2079c;
    }

    public final s p0(String str, String str2, Bundle bundle, String str3, long j10, boolean z10) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (f0(str2) != 0) {
            i4 i4Var = (i4) this.f2115a;
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f.b(i4Var.f1639n.f(str2), "Invalid conditional property event name");
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle bundleO0 = o0(str, str2, bundle2, Collections.singletonList("_o"), true);
        if (z10) {
            bundleO0 = n0(bundleO0);
        }
        r3.r.i(bundleO0);
        return new s(str2, new q(bundleO0), str3, j10);
    }

    @WorkerThread
    public final void r(Bundle bundle, long j10) {
        long j11 = bundle.getLong("_et");
        if (j11 != 0) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(Long.valueOf(j11), "Params already contained engagement");
        } else {
            j11 = 0;
        }
        bundle.putLong("_et", j10 + j11);
    }

    public final void s(Bundle bundle, int r32, String str, Object obj) {
        if (Z(r32, bundle)) {
            ((i4) this.f2115a).getClass();
            bundle.putString("_ev", n(40, str, true));
            if (obj != null) {
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final void u(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                v7 v7Var = ((i4) this.f2115a).f1638m;
                i4.c(v7Var);
                v7Var.x(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void v(f3 f3Var, int r11) {
        Bundle bundle = f3Var.f1539d;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int r22 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (T(str) && (r22 = r22 + 1) > r11) {
                StringBuilder sb2 = new StringBuilder(48);
                sb2.append("Event can't contain more than ");
                sb2.append(r11);
                sb2.append(" params");
                i4 i4Var = (i4) this.f2115a;
                e3 e3Var = i4Var.f1635j;
                i4.e(e3Var);
                e3Var.f1507h.c(i4Var.f1639n.d(f3Var.f1536a), sb2.toString(), i4Var.f1639n.b(bundle));
                Z(5, bundle);
                bundle.remove(str);
            }
        }
    }

    public final void x(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
            return;
        }
        if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            z4 z4Var = this.f2115a;
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1510l.c(((i4) z4Var).f1639n.e(str), "Not putting event parameter. Invalid value type. name, type", simpleName);
        }
    }

    public final void y(com.google.android.gms.internal.measurement.y0 y0Var, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z10);
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning boolean value to wrapper");
        }
    }

    public final void z(com.google.android.gms.internal.measurement.y0 y0Var, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning bundle list to wrapper");
        }
    }
}
