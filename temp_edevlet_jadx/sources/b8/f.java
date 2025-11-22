package b8;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.appcompat.widget.v;
import c5.b4;
import c5.d4;
import c5.p2;
import c5.q2;
import c5.r2;
import c5.w;
import c5.y;
import c6.h;
import cc.e0;
import cc.m0;
import cc.q1;
import cc.t1;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.gms.internal.measurement.g;
import com.google.android.gms.internal.measurement.g5;
import com.google.android.gms.internal.measurement.h5;
import com.google.android.gms.internal.measurement.i;
import com.google.android.gms.internal.measurement.i4;
import com.google.android.gms.internal.measurement.i5;
import com.google.android.gms.internal.measurement.m;
import com.google.android.gms.internal.measurement.p;
import com.google.android.gms.internal.measurement.q;
import com.google.android.gms.internal.measurement.q9;
import com.google.android.gms.internal.measurement.t;
import com.google.mlkit.vision.common.internal.a;
import da.n;
import da.o;
import e.f;
import ed.z;
import ga.p0;
import ga.z0;
import h5.j;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.internal.u;
import m9.a0;
import ma.l0;
import ma.o0;
import nc.b1;
import nc.e1;
import nc.f0;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.CertificateBody;
import p4.c1;
import pc.g;
import r0.x0;
import r3.r;
import rc.k;
import s4.j3;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes2.dex */
public /* synthetic */ class f implements h, p2, j, p.c, k, r2.e {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ f f1178a = new f();

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ f f1179b = new f();

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f1180c = {R.attr.lottie_autoPlay, R.attr.lottie_cacheComposition, R.attr.lottie_colorFilter, R.attr.lottie_enableMergePathsForKitKatAndAbove, R.attr.lottie_fallbackRes, R.attr.lottie_fileName, R.attr.lottie_ignoreDisabledSystemAnimations, R.attr.lottie_imageAssetsFolder, R.attr.lottie_loop, R.attr.lottie_progress, R.attr.lottie_rawRes, R.attr.lottie_renderMode, R.attr.lottie_repeatCount, R.attr.lottie_repeatMode, R.attr.lottie_scale, R.attr.lottie_speed, R.attr.lottie_url};

    /* renamed from: d, reason: collision with root package name */
    public static final u f1181d = new u("NO_DECISION");

    /* renamed from: e, reason: collision with root package name */
    public static final u f1182e = new u("RETRY_ATOMIC");
    public static final /* synthetic */ f f = new f();

    /* renamed from: g, reason: collision with root package name */
    public static final p9.d[] f1183g = new p9.d[0];

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ f f1184h = new f();

    /* renamed from: j, reason: collision with root package name */
    public static final char[] f1185j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: k, reason: collision with root package name */
    public static final char[] f1186k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public /* synthetic */ f() {
    }

    public /* synthetic */ f(f0 f0Var) {
    }

    public static float A(float f10, float f11, float f12) {
        float f13 = f10 / (f12 / 2.0f);
        float f14 = f11 / 2.0f;
        if (f13 < 1.0f) {
            return (f14 * f13 * f13 * f13) + 0.0f;
        }
        float f15 = f13 - 2.0f;
        return (((f15 * f15 * f15) + 2.0f) * f14) + 0.0f;
    }

    public static void A0(int r6, int r72) {
        String strX;
        if (r6 < 0 || r6 >= r72) {
            if (r6 < 0) {
                strX = x5.a.x("%s (%s) must not be negative", "index", Integer.valueOf(r6));
            } else {
                if (r72 < 0) {
                    throw new IllegalArgumentException(v.c(26, "negative size: ", r72));
                }
                strX = x5.a.x("%s (%s) must be less than size (%s)", "index", Integer.valueOf(r6), Integer.valueOf(r72));
            }
            throw new IndexOutOfBoundsException(strX);
        }
    }

    public static String B(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            int r32 = b10 & 255;
            sb2.append("0123456789abcdef".charAt(r32 / 16));
            sb2.append("0123456789abcdef".charAt(r32 % 16));
        }
        return sb2.toString();
    }

    public static void B0(byte[] bArr, int r72, long j10, long j11, long[] jArr) {
        long jF0 = F0(r72, bArr);
        long jF02 = F0(r72 + 8, bArr);
        long jF03 = F0(r72 + 16, bArr);
        long jF04 = F0(r72 + 24, bArr);
        long j12 = j10 + jF0;
        long j13 = jF02 + j12 + jF03;
        long jRotateRight = Long.rotateRight(j13, 44) + Long.rotateRight(j11 + j12 + jF04, 21);
        jArr[0] = j13 + jF04;
        jArr[1] = jRotateRight + j12;
    }

    public static boolean C(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean C0(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int D(float f10, int r82, int r92) {
        if (r82 == r92) {
            return r82;
        }
        float f11 = ((r82 >> 24) & 255) / 255.0f;
        float f12 = ((r92 >> 24) & 255) / 255.0f;
        float fG = g(((r82 >> 16) & 255) / 255.0f);
        float fG2 = g(((r82 >> 8) & 255) / 255.0f);
        float fG3 = g((r82 & 255) / 255.0f);
        float fG4 = g(((r92 >> 16) & 255) / 255.0f);
        float fG5 = g(((r92 >> 8) & 255) / 255.0f);
        float fG6 = g((r92 & 255) / 255.0f);
        float fD = androidx.appcompat.graphics.drawable.a.d(f12, f11, f10, f11);
        float fD2 = androidx.appcompat.graphics.drawable.a.d(fG4, fG, f10, fG);
        float fD3 = androidx.appcompat.graphics.drawable.a.d(fG5, fG2, f10, fG2);
        float fD4 = androidx.appcompat.graphics.drawable.a.d(fG6, fG3, f10, fG3);
        float fH = h(fD2) * 255.0f;
        float fH2 = h(fD3) * 255.0f;
        return Math.round(h(fD4) * 255.0f) | (Math.round(fH) << 16) | (Math.round(fD * 255.0f) << 24) | (Math.round(fH2) << 8);
    }

    public static boolean D0(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof c1) {
            collection = ((c1) collection).a();
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

    public static final sa.e E(Annotation[] annotationArr, lb.c fqName) {
        Annotation annotation;
        kotlin.jvm.internal.h.f(annotationArr, "<this>");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        int length = annotationArr.length;
        int r12 = 0;
        while (true) {
            if (r12 >= length) {
                annotation = null;
                break;
            }
            annotation = annotationArr[r12];
            if (kotlin.jvm.internal.h.a(sa.d.a(d0.q(d0.p(annotation))).b(), fqName)) {
                break;
            }
            r12++;
        }
        if (annotation != null) {
            return new sa.e(annotation);
        }
        return null;
    }

    public static void E0(int r6, int r72) {
        String strM;
        if (r6 < 0 || r6 >= r72) {
            if (r6 < 0) {
                strM = w.M("%s (%s) must not be negative", "index", Integer.valueOf(r6));
            } else {
                if (r72 < 0) {
                    throw new IllegalArgumentException(android.support.v4.media.a.d("negative size: ", r72));
                }
                strM = w.M("%s (%s) must be less than size (%s)", "index", Integer.valueOf(r6), Integer.valueOf(r72));
            }
            throw new IndexOutOfBoundsException(strM);
        }
    }

    public static final int F(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (Exception unused) {
                int height = bitmap.getHeight() * bitmap.getWidth();
                Bitmap.Config config = bitmap.getConfig();
                return height * (config != Bitmap.Config.ALPHA_8 ? (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) ? 2 : (Build.VERSION.SDK_INT < 26 || config != Bitmap.Config.RGBA_F16) ? 4 : 8 : 1);
            }
        }
        throw new IllegalStateException(("Cannot obtain size for recycled bitmap: " + bitmap + " [" + bitmap.getWidth() + " x " + bitmap.getHeight() + "] + " + bitmap.getConfig()).toString());
    }

    public static long F0(int r12, byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, r12, 8);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getLong();
    }

    public static final ArrayList G(Annotation[] annotationArr) {
        kotlin.jvm.internal.h.f(annotationArr, "<this>");
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new sa.e(annotation));
        }
        return arrayList;
    }

    public static p G0(Object obj) {
        if (obj == null) {
            return p.f3669o;
        }
        if (obj instanceof String) {
            return new t((String) obj);
        }
        if (obj instanceof Double) {
            return new i((Double) obj);
        }
        if (obj instanceof Long) {
            return new i(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new i(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new g((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            com.google.android.gms.internal.measurement.f fVar = new com.google.android.gms.internal.measurement.f();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                fVar.G(fVar.y(), G0(it.next()));
            }
            return fVar;
        }
        m mVar = new m();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            p pVarG0 = G0(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                mVar.u((String) string, pVarG0);
            }
        }
        return mVar;
    }

    public static final int H(ha.f fVar) {
        kotlin.jvm.internal.h.f(fVar, "<this>");
        return fVar.a().size();
    }

    public static String H0(String[] strArr, String str, String[] strArr2) {
        int r02 = Math.min(strArr.length, strArr2.length);
        for (int r12 = 0; r12 < r02; r12++) {
            String str2 = strArr[r12];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[r12];
            }
        }
        return null;
    }

    public static float[] I(RectF rectF) {
        float f10 = rectF.left;
        float f11 = rectF.top;
        float f12 = rectF.right;
        float f13 = rectF.bottom;
        return new float[]{f10, f11, f12, f11, f12, f13, f10, f13};
    }

    public static List I0(j3 j3Var) {
        Point[] pointArr = new Point[4];
        double dSin = Math.sin(Math.toRadians(j3Var.f15049e));
        double dCos = Math.cos(Math.toRadians(j3Var.f15049e));
        int r6 = j3Var.f15045a;
        int r72 = j3Var.f15046b;
        pointArr[0] = new Point(r6, r72);
        double d10 = j3Var.f15047c;
        Point point = new Point((int) ((d10 * dCos) + r6), (int) ((d10 * dSin) + r72));
        pointArr[1] = point;
        double d11 = point.x;
        int r15 = j3Var.f15048d;
        pointArr[2] = new Point((int) (d11 - (r15 * dSin)), (int) ((r15 * dCos) + pointArr[1].y));
        Point point2 = pointArr[0];
        int r32 = point2.x;
        Point point3 = pointArr[2];
        int r42 = point3.x;
        Point point4 = pointArr[1];
        pointArr[3] = new Point((r42 - point4.x) + r32, (point3.y - point4.y) + point2.y);
        return Arrays.asList(pointArr);
    }

    public static final e0 J(ma.b bVar) {
        o0 o0VarH0 = bVar.h0();
        o0 o0VarA0 = bVar.a0();
        if (o0VarH0 != null) {
            return o0VarH0.getType();
        }
        if (o0VarA0 != null) {
            if (bVar instanceof ma.i) {
                return o0VarA0.getType();
            }
            ma.j jVarB = bVar.b();
            ma.e eVar = jVarB instanceof ma.e ? (ma.e) jVarB : null;
            if (eVar != null) {
                return eVar.q();
            }
        }
        return null;
    }

    public static void J0(int r22, int r32) {
        if (r22 < 0 || r22 > r32) {
            throw new IndexOutOfBoundsException(P0(r22, r32, "index"));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final da.d K(da.e eVar) {
        ma.e eVar2;
        if (eVar instanceof da.d) {
            return (da.d) eVar;
        }
        if (!(eVar instanceof o)) {
            throw new l9.f("Cannot calculate JVM erasure for type: " + eVar, 1);
        }
        List<n> upperBounds = ((o) eVar).getUpperBounds();
        Iterator<T> it = upperBounds.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            n nVar = (n) next;
            kotlin.jvm.internal.h.d(nVar, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
            ma.g gVarN = ((p0) nVar).f6098a.M0().n();
            eVar2 = gVarN instanceof ma.e ? (ma.e) gVarN : null;
            if ((eVar2 == null || eVar2.h() == 2 || eVar2.h() == 5) ? false : true) {
                eVar2 = next;
                break;
            }
        }
        n nVar2 = (n) eVar2;
        if (nVar2 == null) {
            nVar2 = (n) m9.t.c1(upperBounds);
        }
        return nVar2 != null ? L(nVar2) : kotlin.jvm.internal.w.a(Object.class);
    }

    public static void K0(int r22, int r32) {
        if (r22 < 0 || r22 > r32) {
            throw new IndexOutOfBoundsException(O0(r22, r32, "index"));
        }
    }

    public static final da.d L(n nVar) {
        da.d dVarK;
        kotlin.jvm.internal.h.f(nVar, "<this>");
        da.e eVarB = nVar.b();
        if (eVarB != null && (dVarK = K(eVarB)) != null) {
            return dVarK;
        }
        throw new l9.f("Cannot calculate JVM erasure for type: " + nVar, 1);
    }

    public static String L0(Context context, String str) {
        r.i(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str)) {
            str = d4.a(context);
        }
        return d4.b(resources, "google_app_id", str);
    }

    public static final int M(List list) {
        kotlin.jvm.internal.h.f(list, "<this>");
        return list.size() - 1;
    }

    public static void M0(int r22, int r32, int r42) {
        if (r22 < 0 || r32 < r22 || r32 > r42) {
            throw new IndexOutOfBoundsException((r22 < 0 || r22 > r42) ? P0(r22, r42, "start index") : (r32 < 0 || r32 > r42) ? P0(r32, r42, "end index") : x5.a.x("end index (%s) must not be less than start index (%s)", Integer.valueOf(r32), Integer.valueOf(r22)));
        }
    }

    public static final Method N(Class cls, ma.b descriptor) throws NoSuchMethodException, SecurityException {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        try {
            Method declaredMethod = cls.getDeclaredMethod("unbox-impl", new Class[0]);
            kotlin.jvm.internal.h.e(declaredMethod, "{\n        getDeclaredMet…LINE_CLASS_MEMBERS)\n    }");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new l9.f("No unbox method found in inline class: " + cls + " (calling " + descriptor + ')', 1);
        }
    }

    public static void N0(int r22, int r32, int r42) {
        if (r22 < 0 || r32 < r22 || r32 > r42) {
            throw new IndexOutOfBoundsException((r22 < 0 || r22 > r42) ? O0(r22, r42, "start index") : (r32 < 0 || r32 > r42) ? O0(r32, r42, "end index") : w.M("end index (%s) must not be less than start index (%s)", Integer.valueOf(r32), Integer.valueOf(r22)));
        }
    }

    public static final Object O(bc.i iVar, da.m p10) {
        kotlin.jvm.internal.h.f(iVar, "<this>");
        kotlin.jvm.internal.h.f(p10, "p");
        return iVar.invoke();
    }

    public static String O0(int r42, int r52, String str) {
        if (r42 < 0) {
            return w.M("%s (%s) must not be negative", str, Integer.valueOf(r42));
        }
        if (r52 >= 0) {
            return w.M("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(r42), Integer.valueOf(r52));
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("negative size: ", r52));
    }

    public static int P(byte[] bArr, int r72, int r82) {
        byte b10 = bArr[r72 - 1];
        int r83 = r82 - r72;
        if (r83 == 0) {
            if (b10 > -12) {
                return -1;
            }
            return b10;
        }
        if (r83 == 1) {
            byte b11 = bArr[r72];
            if (b10 > -12 || b11 > -65) {
                return -1;
            }
            return b10 ^ (b11 << 8);
        }
        if (r83 != 2) {
            throw new AssertionError();
        }
        byte b12 = bArr[r72];
        byte b13 = bArr[r72 + 1];
        if (b10 > -12 || b12 > -65 || b13 > -65) {
            return -1;
        }
        return ((b12 << 8) ^ b10) ^ (b13 << 16);
    }

    public static String P0(int r42, int r52, String str) {
        if (r42 < 0) {
            return x5.a.x("%s (%s) must not be negative", str, Integer.valueOf(r42));
        }
        if (r52 >= 0) {
            return x5.a.x("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(r42), Integer.valueOf(r52));
        }
        throw new IllegalArgumentException(v.c(26, "negative size: ", r52));
    }

    public static final boolean Q(l0 l0Var) {
        kotlin.jvm.internal.h.f(l0Var, "<this>");
        return l0Var.l() == null;
    }

    public static final a0 R(Object[] array) {
        kotlin.jvm.internal.h.f(array, "array");
        return new a0(array);
    }

    public static final List S(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        kotlin.jvm.internal.h.e(listSingletonList, "singletonList(element)");
        return listSingletonList;
    }

    public static final List T(Object... elements) {
        kotlin.jvm.internal.h.f(elements, "elements");
        return elements.length > 0 ? m9.i.g0(elements) : m9.v.f10173a;
    }

    public static final List U(Object obj) {
        return obj != null ? S(obj) : m9.v.f10173a;
    }

    public static final int V(int r12) {
        if (r12 < 0) {
            return r12;
        }
        if (r12 < 3) {
            return r12 + 1;
        }
        if (r12 < 1073741824) {
            return (int) ((r12 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static final Map W(l9.g pair) {
        kotlin.jvm.internal.h.f(pair, "pair");
        Map mapSingletonMap = Collections.singletonMap(pair.f9582a, pair.f9583b);
        kotlin.jvm.internal.h.e(mapSingletonMap, "singletonMap(pair.first, pair.second)");
        return mapSingletonMap;
    }

    public static String X(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb2 = new StringBuilder(str2.length() + str.length());
        for (int r12 = 0; r12 < str.length(); r12++) {
            sb2.append(str.charAt(r12));
            if (str2.length() > r12) {
                sb2.append(str2.charAt(r12));
            }
        }
        return sb2.toString();
    }

    public static final ArrayList Y(Object... elements) {
        kotlin.jvm.internal.h.f(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new m9.f(elements, true));
    }

    public static final List Z(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : S(list.get(0)) : m9.v.f10173a;
    }

    public static int a0(byte[] bArr, int r82, int r92) {
        while (r82 < r92 && bArr[r82] >= 0) {
            r82++;
        }
        if (r82 >= r92) {
            return 0;
        }
        while (r82 < r92) {
            int r12 = r82 + 1;
            byte b10 = bArr[r82];
            if (b10 < 0) {
                if (b10 < -32) {
                    if (r12 >= r92) {
                        return b10;
                    }
                    if (b10 >= -62) {
                        r82 = r12 + 1;
                        if (bArr[r12] > -65) {
                        }
                    }
                    return -1;
                }
                if (b10 < -16) {
                    if (r12 >= r92 - 1) {
                        return P(bArr, r12, r92);
                    }
                    int r52 = r12 + 1;
                    byte b11 = bArr[r12];
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        r82 = r52 + 1;
                        if (bArr[r52] > -65) {
                        }
                    }
                    return -1;
                }
                if (r12 >= r92 - 2) {
                    return P(bArr, r12, r92);
                }
                int r32 = r12 + 1;
                byte b12 = bArr[r12];
                if (b12 <= -65) {
                    if ((((b12 + ISO7816.INS_MANAGE_CHANNEL) + (b10 << 28)) >> 30) == 0) {
                        int r83 = r32 + 1;
                        if (bArr[r32] <= -65) {
                            r12 = r83 + 1;
                            if (bArr[r83] > -65) {
                            }
                        }
                    }
                }
                return -1;
            }
            r82 = r12;
        }
        return 0;
    }

    public static final Bundle b0(r0.p persistState, boolean z10) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z11;
        int r10;
        Method declaredMethod;
        kotlin.jvm.internal.h.f(persistState, "$this$persistState");
        Class<?> cls = persistState.getClass();
        Constructor constructorC0 = c0(cls);
        if (constructorC0 == null) {
            return new Bundle();
        }
        Bundle bundle = new Bundle();
        Annotation[][] parameterAnnotations = constructorC0.getParameterAnnotations();
        kotlin.jvm.internal.h.e(parameterAnnotations, "constructor.parameterAnnotations");
        int length = parameterAnnotations.length;
        int r52 = 0;
        int r6 = 0;
        int r72 = 0;
        while (r6 < length) {
            int r92 = r72 + 1;
            Annotation[] p10 = parameterAnnotations[r6];
            kotlin.jvm.internal.h.e(p10, "p");
            int length2 = p10.length;
            int r11 = 0;
            while (true) {
                if (r11 >= length2) {
                    z11 = true;
                    break;
                }
                if (p10[r11] instanceof x0) {
                    z11 = false;
                    break;
                }
                r11++;
            }
            if (!z11) {
                String strD = android.support.v4.media.a.d("component", r92);
                try {
                    declaredMethod = cls.getDeclaredMethod(strD, new Class[r52]);
                } catch (NoSuchMethodException unused) {
                    Method[] declaredMethods = cls.getDeclaredMethods();
                    kotlin.jvm.internal.h.e(declaredMethods, "declaredMethods");
                    for (Method it : declaredMethods) {
                        kotlin.jvm.internal.h.e(it, "it");
                        String name = it.getName();
                        kotlin.jvm.internal.h.e(name, "it.name");
                        if (mc.j.D(name, strD + '$', false)) {
                            declaredMethod = it;
                        }
                    }
                    r10 = 0;
                    declaredMethod = null;
                }
                r10 = 0;
                if (declaredMethod == null) {
                    StringBuilder sbL = android.support.v4.media.a.l("Unable to find function ", strD, " in ");
                    sbL.append(kotlin.jvm.internal.w.a(cls.getClass()).d());
                    throw new IllegalStateException(sbL.toString().toString());
                }
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(persistState, new Object[r10]);
                if (z10) {
                    if (objInvoke instanceof Collection) {
                        Iterable iterable = (Iterable) objInvoke;
                        kotlin.jvm.internal.h.f(iterable, "<this>");
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : iterable) {
                            if (obj != null) {
                                arrayList.add(obj);
                            }
                        }
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            l(it2.next());
                        }
                    } else if (objInvoke instanceof Map) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it3 = ((Map) objInvoke).entrySet().iterator();
                        while (it3.hasNext()) {
                            Object value = ((Map.Entry) it3.next()).getValue();
                            if (value != null) {
                                arrayList2.add(value);
                            }
                        }
                        Iterator it4 = arrayList2.iterator();
                        while (it4.hasNext()) {
                            l(it4.next());
                        }
                    }
                }
                String strValueOf = String.valueOf(r72);
                if (objInvoke instanceof Parcelable) {
                    bundle.putParcelable(strValueOf, (Parcelable) objInvoke);
                } else if (objInvoke instanceof Serializable) {
                    bundle.putSerializable(strValueOf, (Serializable) objInvoke);
                } else {
                    if (objInvoke != null) {
                        throw new IllegalStateException(androidx.browser.browseractions.a.a("Cannot persist ", strValueOf, ". It must be null, Serializable, or Parcelable.").toString());
                    }
                    bundle.putString(strValueOf, null);
                }
            }
            r6++;
            r52 = 0;
            r72 = r92;
        }
        return bundle;
    }

    public static final Constructor c0(Class cls) throws SecurityException {
        boolean z10;
        boolean z11;
        Constructor<?>[] constructors = cls.getConstructors();
        kotlin.jvm.internal.h.e(constructors, "constructors");
        for (Constructor<?> constructor : constructors) {
            kotlin.jvm.internal.h.e(constructor, "constructor");
            Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
            kotlin.jvm.internal.h.e(parameterAnnotations, "constructor.parameterAnnotations");
            int length = parameterAnnotations.length;
            int r6 = 0;
            while (true) {
                if (r6 >= length) {
                    z10 = false;
                    break;
                }
                Annotation[] paramAnnotations = parameterAnnotations[r6];
                kotlin.jvm.internal.h.e(paramAnnotations, "paramAnnotations");
                int length2 = paramAnnotations.length;
                int r92 = 0;
                while (true) {
                    z10 = true;
                    if (r92 >= length2) {
                        z11 = false;
                        break;
                    }
                    if (paramAnnotations[r92] instanceof x0) {
                        z11 = true;
                        break;
                    }
                    r92++;
                }
                if (z11) {
                    break;
                }
                r6++;
            }
            if (z10) {
                return constructor;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0109, code lost:
    
        if (lb.f.u(r6) == false) goto L69;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static lb.f d0(lb.f r6, java.lang.String r7, java.lang.String r8, int r9) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b8.f.d0(lb.f, java.lang.String, java.lang.String, int):lb.f");
    }

    public static pc.a e(int r42, pc.f fVar, int r6) {
        if ((r6 & 1) != 0) {
            r42 = 0;
        }
        int r62 = r6 & 2;
        pc.f fVar2 = pc.f.SUSPEND;
        if (r62 != 0) {
            fVar = fVar2;
        }
        int r22 = 1;
        if (r42 == -2) {
            if (fVar == fVar2) {
                pc.g.f13096f0.getClass();
                r22 = g.a.f13098b;
            }
            return new pc.d(r22, fVar, null);
        }
        if (r42 != -1) {
            return r42 != 0 ? r42 != Integer.MAX_VALUE ? (r42 == 1 && fVar == pc.f.DROP_OLDEST) ? new pc.n(null) : new pc.d(r42, fVar, null) : new pc.o(null) : fVar == fVar2 ? new pc.w(null) : new pc.d(1, fVar, null);
        }
        if (fVar == fVar2) {
            return new pc.n(null);
        }
        throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
    }

    public static final String e0(lb.f fVar) {
        boolean z10;
        kotlin.jvm.internal.h.f(fVar, "<this>");
        String strO = fVar.o();
        kotlin.jvm.internal.h.e(strO, "asString()");
        boolean z11 = true;
        if (!nb.n.f10765a.contains(strO)) {
            int r42 = 0;
            while (true) {
                if (r42 >= strO.length()) {
                    z10 = false;
                    break;
                }
                char cCharAt = strO.charAt(r42);
                if ((Character.isLetterOrDigit(cCharAt) || cCharAt == '_') ? false : true) {
                    z10 = true;
                    break;
                }
                r42++;
            }
            if (!z10) {
                z11 = false;
            }
        }
        if (!z11) {
            String strO2 = fVar.o();
            kotlin.jvm.internal.h.e(strO2, "asString()");
            return strO2;
        }
        StringBuilder sb2 = new StringBuilder();
        String strO3 = fVar.o();
        kotlin.jvm.internal.h.e(strO3, "asString()");
        sb2.append("`".concat(strO3));
        sb2.append('`');
        return sb2.toString();
    }

    public static final kotlinx.coroutines.internal.f f(p9.f fVar) {
        if (fVar.get(b1.b.f10784a) == null) {
            fVar = fVar.plus(new e1(null));
        }
        return new kotlinx.coroutines.internal.f(fVar);
    }

    public static final String f0(List list) {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            lb.f fVar = (lb.f) it.next();
            if (sb2.length() > 0) {
                sb2.append(".");
            }
            sb2.append(e0(fVar));
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static float g(float f10) {
        return f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static final String g0(String lowerRendered, String lowerPrefix, String upperRendered, String upperPrefix, String foldedPrefix) {
        kotlin.jvm.internal.h.f(lowerRendered, "lowerRendered");
        kotlin.jvm.internal.h.f(lowerPrefix, "lowerPrefix");
        kotlin.jvm.internal.h.f(upperRendered, "upperRendered");
        kotlin.jvm.internal.h.f(upperPrefix, "upperPrefix");
        kotlin.jvm.internal.h.f(foldedPrefix, "foldedPrefix");
        if (!mc.j.D(lowerRendered, lowerPrefix, false) || !mc.j.D(upperRendered, upperPrefix, false)) {
            return null;
        }
        String strSubstring = lowerRendered.substring(lowerPrefix.length());
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
        String strSubstring2 = upperRendered.substring(upperPrefix.length());
        kotlin.jvm.internal.h.e(strSubstring2, "this as java.lang.String).substring(startIndex)");
        String strConcat = foldedPrefix.concat(strSubstring);
        if (kotlin.jvm.internal.h.a(strSubstring, strSubstring2)) {
            return strConcat;
        }
        if (!q0(strSubstring, strSubstring2)) {
            return null;
        }
        return strConcat + '!';
    }

    public static float h(float f10) {
        return f10 <= 0.0031308f ? f10 * 12.92f : (float) ((Math.pow(f10, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static final r0.p h0(Bundle restorePersistedState, r0.p initialState, boolean z10) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z11;
        kotlin.jvm.internal.h.f(restorePersistedState, "$this$restorePersistedState");
        kotlin.jvm.internal.h.f(initialState, "initialState");
        Class<?> cls = initialState.getClass();
        Constructor constructorC0 = c0(cls);
        if (constructorC0 == null) {
            return initialState;
        }
        restorePersistedState.setClassLoader(cls.getClassLoader());
        Method[] declaredMethods = cls.getDeclaredMethods();
        kotlin.jvm.internal.h.e(declaredMethods, "jvmClass.declaredMethods");
        for (Method it : declaredMethods) {
            kotlin.jvm.internal.h.e(it, "it");
            if (kotlin.jvm.internal.h.a(it.getName(), "copy$default")) {
                int length = constructorC0.getParameterTypes().length;
                int r42 = (length / 32) + 1;
                int[] r82 = new int[r42];
                for (int r92 = 0; r92 < r42; r92++) {
                    r82[r92] = 0;
                }
                Object[] objArr = new Object[length];
                objArr[0] = initialState;
                int r10 = 0;
                while (true) {
                    Object objValueOf = null;
                    if (r10 >= length) {
                        b4 b4Var = new b4(4);
                        b4Var.b(initialState);
                        b4Var.c(objArr);
                        Integer[] numArr = new Integer[r42];
                        for (int r52 = 0; r52 < r42; r52++) {
                            numArr[r52] = Integer.valueOf(r82[r52]);
                        }
                        b4Var.c(numArr);
                        b4Var.b(null);
                        Object objInvoke = it.invoke(null, b4Var.f(new Object[b4Var.e()]));
                        if (objInvoke != null) {
                            return (r0.p) objInvoke;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type T");
                    }
                    String strValueOf = String.valueOf(r10);
                    if (restorePersistedState.containsKey(strValueOf)) {
                        objArr[r10] = restorePersistedState.get(strValueOf);
                    } else {
                        if (z10) {
                            Annotation[] annotationArr = constructorC0.getParameterAnnotations()[r10];
                            kotlin.jvm.internal.h.e(annotationArr, "constructor.parameterAnnotations[i]");
                            int length2 = annotationArr.length;
                            int r14 = 0;
                            while (true) {
                                if (r14 >= length2) {
                                    z11 = false;
                                    break;
                                }
                                if (annotationArr[r14] instanceof x0) {
                                    z11 = true;
                                    break;
                                }
                                r14++;
                            }
                            if (z11) {
                                throw new IllegalStateException(androidx.appcompat.graphics.drawable.a.f("savedInstanceState bundle should have a key for state property at position ", r10, " but it was missing.").toString());
                            }
                        }
                        int r12 = r10 / 32;
                        r82[r12] = r82[r12] | (1 << (r10 % 32));
                        Class<?> cls2 = it.getParameterTypes()[r10 + 1];
                        kotlin.jvm.internal.h.e(cls2, "copyFunction.parameterTypes[i + 1]");
                        if (kotlin.jvm.internal.h.a(cls2, Integer.TYPE)) {
                            objValueOf = 0;
                        } else if (kotlin.jvm.internal.h.a(cls2, Boolean.TYPE)) {
                            objValueOf = Boolean.FALSE;
                        } else if (kotlin.jvm.internal.h.a(cls2, Float.TYPE)) {
                            objValueOf = Float.valueOf(0.0f);
                        } else if (kotlin.jvm.internal.h.a(cls2, Character.TYPE)) {
                            objValueOf = 'A';
                        } else if (kotlin.jvm.internal.h.a(cls2, Byte.TYPE)) {
                            objValueOf = Byte.valueOf(ISOFileInfo.DATA_BYTES1);
                        } else if (kotlin.jvm.internal.h.a(cls2, Short.TYPE)) {
                            objValueOf = Short.MIN_VALUE;
                        } else if (kotlin.jvm.internal.h.a(cls2, Long.TYPE)) {
                            objValueOf = 0L;
                        } else if (kotlin.jvm.internal.h.a(cls2, Double.TYPE)) {
                            objValueOf = Double.valueOf(0.0d);
                        }
                        objArr[r10] = objValueOf;
                    }
                    r10++;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    public static final String i0(ma.e classDescriptor, String jvmDescriptor) {
        String internalName;
        kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
        kotlin.jvm.internal.h.f(jvmDescriptor, "jvmDescriptor");
        String str = la.c.f9598a;
        lb.d dVarI = sb.b.g(classDescriptor).i();
        kotlin.jvm.internal.h.e(dVarI, "fqNameSafe.toUnsafe()");
        lb.b bVarG = la.c.g(dVarI);
        if (bVarG != null) {
            internalName = tb.b.b(bVarG).e();
            kotlin.jvm.internal.h.e(internalName, "byClassId(it).internalName");
        } else {
            internalName = x5.a.g(classDescriptor, c5.u.f2018g);
        }
        kotlin.jvm.internal.h.f(internalName, "internalName");
        return internalName + '.' + jvmDescriptor;
    }

    public static final lb.c j(lb.d dVar, String str) {
        lb.c cVarH = dVar.b(lb.f.t(str)).h();
        kotlin.jvm.internal.h.e(cVarH, "child(Name.identifier(name)).toSafe()");
        return cVarH;
    }

    public static final ca.b j0(ca.b bVar, int r42) {
        kotlin.jvm.internal.h.f(bVar, "<this>");
        boolean z10 = r42 > 0;
        Integer step = Integer.valueOf(r42);
        kotlin.jvm.internal.h.f(step, "step");
        if (z10) {
            if (bVar.f2248c <= 0) {
                r42 = -r42;
            }
            return new ca.b(bVar.f2246a, bVar.f2247b, r42);
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }

    public static final void k(Throwable th2, Throwable exception) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.h.f(th2, "<this>");
        kotlin.jvm.internal.h.f(exception, "exception");
        if (th2 != exception) {
            s9.b.f15317a.a(th2, exception);
        }
    }

    public static final void k0() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static final void l(Object obj) {
        if (!(obj instanceof Serializable) && !(obj instanceof Parcelable)) {
            throw new IllegalStateException("Cannot parcel ".concat(obj.getClass().getSimpleName()).toString());
        }
    }

    public static final String l0(String toCanonicalHost) {
        kotlin.jvm.internal.h.f(toCanonicalHost, "$this$toCanonicalHost");
        int r12 = 0;
        int r22 = -1;
        if (!mc.n.G(toCanonicalHost, ":", false)) {
            try {
                String str = IDN.toASCII(toCanonicalHost);
                kotlin.jvm.internal.h.e(str, "IDN.toASCII(host)");
                Locale locale = Locale.US;
                kotlin.jvm.internal.h.e(locale, "Locale.US");
                String lowerCase = str.toLowerCase(locale);
                kotlin.jvm.internal.h.e(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                if (lowerCase.length() == 0) {
                    return null;
                }
                int length = lowerCase.length();
                for (int r52 = 0; r52 < length; r52++) {
                    char cCharAt = lowerCase.charAt(r52);
                    if (kotlin.jvm.internal.h.h(cCharAt, 31) > 0 && kotlin.jvm.internal.h.h(cCharAt, CertificateBody.profileType) < 0 && mc.n.M(" #%/:?@[\\]", cCharAt, 0, false, 6) == -1) {
                    }
                    r12 = 1;
                    break;
                }
                if (r12 != 0) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressX = (mc.j.D(toCanonicalHost, "[", false) && mc.j.w(toCanonicalHost, "]", false)) ? x(1, toCanonicalHost.length() - 1, toCanonicalHost) : x(0, toCanonicalHost.length(), toCanonicalHost);
        if (inetAddressX == null) {
            return null;
        }
        byte[] address = inetAddressX.getAddress();
        if (address.length != 16) {
            if (address.length == 4) {
                return inetAddressX.getHostAddress();
            }
            throw new AssertionError("Invalid IPv6 address: '" + toCanonicalHost + '\'');
        }
        int r92 = 0;
        int r02 = 0;
        while (r92 < address.length) {
            int r42 = r92;
            while (r42 < 16 && address[r42] == 0 && address[r42 + 1] == 0) {
                r42 += 2;
            }
            int r72 = r42 - r92;
            if (r72 > r02 && r72 >= 4) {
                r22 = r92;
                r02 = r72;
            }
            r92 = r42 + 2;
        }
        ed.e eVar = new ed.e();
        while (r12 < address.length) {
            if (r12 == r22) {
                eVar.O(58);
                r12 += r02;
                if (r12 == 16) {
                    eVar.O(58);
                }
            } else {
                if (r12 > 0) {
                    eVar.O(58);
                }
                byte b10 = address[r12];
                byte[] bArr = sc.c.f15380a;
                eVar.W(((b10 & 255) << 8) | (address[r12 + 1] & 255));
                r12 += 2;
            }
        }
        return eVar.r();
    }

    public static void m(nc.a0 a0Var) {
        b1 b1Var = (b1) a0Var.getCoroutineContext().get(b1.b.f10784a);
        if (b1Var == null) {
            throw new IllegalStateException(kotlin.jvm.internal.h.k(a0Var, "Scope cannot be cancelled because it does not have a job: ").toString());
        }
        b1Var.a(null);
    }

    public static final Class m0(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        Class clsN0 = n0(e0Var.M0().n());
        if (clsN0 == null) {
            return null;
        }
        if (!q1.g(e0Var)) {
            return clsN0;
        }
        m0 m0VarE = ob.k.e(e0Var);
        if (m0VarE == null || q1.g(m0VarE) || ja.k.G(m0VarE)) {
            return null;
        }
        return clsN0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.Serializable n(kotlinx.coroutines.flow.f r4, kotlinx.coroutines.flow.g r5, p9.d r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.o
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.o r0 = (kotlinx.coroutines.flow.o) r0
            int r1 = r0.f9096c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9096c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.o r0 = new kotlinx.coroutines.flow.o
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f9095b
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9096c
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2c
            kotlin.jvm.internal.v r4 = r0.f9094a
            c5.w.F(r6)     // Catch: java.lang.Throwable -> L29
            goto L4c
        L29:
            r5 = move-exception
            r1 = r5
            goto L51
        L2c:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L34:
            c5.w.F(r6)
            kotlin.jvm.internal.v r6 = new kotlin.jvm.internal.v
            r6.<init>()
            kotlinx.coroutines.flow.p r2 = new kotlinx.coroutines.flow.p     // Catch: java.lang.Throwable -> L4e
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L4e
            r0.f9094a = r6     // Catch: java.lang.Throwable -> L4e
            r0.f9096c = r3     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r4 = r4.a(r2, r0)     // Catch: java.lang.Throwable -> L4e
            if (r4 != r1) goto L4c
            goto L8b
        L4c:
            r1 = 0
            goto L8b
        L4e:
            r4 = move-exception
            r1 = r4
            r4 = r6
        L51:
            T r4 = r4.f8975a
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            r5 = 0
            if (r4 == 0) goto L60
            boolean r6 = kotlin.jvm.internal.h.a(r4, r1)
            if (r6 == 0) goto L60
            r6 = 1
            goto L61
        L60:
            r6 = 0
        L61:
            if (r6 != 0) goto L98
            p9.f r6 = r0.getContext()
            nc.b1$b r0 = nc.b1.b.f10784a
            p9.f$b r6 = r6.get(r0)
            nc.b1 r6 = (nc.b1) r6
            if (r6 == 0) goto L87
            boolean r0 = r6.isCancelled()
            if (r0 != 0) goto L78
            goto L87
        L78:
            java.util.concurrent.CancellationException r6 = r6.n()
            if (r6 == 0) goto L85
            boolean r6 = kotlin.jvm.internal.h.a(r6, r1)
            if (r6 == 0) goto L85
            goto L86
        L85:
            r3 = 0
        L86:
            r5 = r3
        L87:
            if (r5 != 0) goto L98
            if (r4 != 0) goto L8c
        L8b:
            return r1
        L8c:
            boolean r5 = r1 instanceof java.util.concurrent.CancellationException
            if (r5 == 0) goto L94
            k(r4, r1)
            throw r4
        L94:
            k(r1, r4)
            throw r1
        L98:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b8.f.n(kotlinx.coroutines.flow.f, kotlinx.coroutines.flow.g, p9.d):java.io.Serializable");
    }

    public static final Class n0(ma.j jVar) {
        if (!(jVar instanceof ma.e) || !ob.k.b(jVar)) {
            return null;
        }
        ma.e eVar = (ma.e) jVar;
        Class<?> clsJ = z0.j(eVar);
        if (clsJ != null) {
            return clsJ;
        }
        throw new l9.f("Class object for the class " + eVar.getName() + " cannot be found (classId=" + sb.b.f((ma.g) jVar) + ')', 1);
    }

    public static void o(t8.a aVar, String str, Class cls) {
        if (aVar == null) {
            if (!str.contains("%s")) {
                throw new IllegalArgumentException("errorMessageTemplate has no format specifiers");
            }
            if (str.indexOf("%s") != str.lastIndexOf("%s")) {
                throw new IllegalArgumentException("errorMessageTemplate has more than one format specifier");
            }
            throw new NullPointerException(str.replace("%s", cls.getCanonicalName()));
        }
    }

    public static final Map o0(Map map) {
        kotlin.jvm.internal.h.f(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        kotlin.jvm.internal.h.e(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }

    public static final Object p(Object obj, ma.b bVar) {
        e0 e0VarJ;
        Class clsM0;
        return (((bVar instanceof l0) && ob.k.d((ma.b1) bVar)) || (e0VarJ = J(bVar)) == null || (clsM0 = m0(e0VarJ)) == null) ? obj : N(clsM0, bVar).invoke(obj, new Object[0]);
    }

    public static RectF p0(float[] fArr) {
        RectF rectF = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        for (int r12 = 1; r12 < fArr.length; r12 += 2) {
            float fRound = Math.round(fArr[r12 - 1] * 10.0f) / 10.0f;
            float fRound2 = Math.round(fArr[r12] * 10.0f) / 10.0f;
            float f10 = rectF.left;
            if (fRound < f10) {
                f10 = fRound;
            }
            rectF.left = f10;
            float f11 = rectF.top;
            if (fRound2 < f11) {
                f11 = fRound2;
            }
            rectF.top = f11;
            float f12 = rectF.right;
            if (fRound <= f12) {
                fRound = f12;
            }
            rectF.right = fRound;
            float f13 = rectF.bottom;
            if (fRound2 <= f13) {
                fRound2 = f13;
            }
            rectF.bottom = fRound2;
        }
        rectF.sort();
        return rectF;
    }

    public static final int q(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static final boolean q0(String lower, String upper) {
        kotlin.jvm.internal.h.f(lower, "lower");
        kotlin.jvm.internal.h.f(upper, "upper");
        if (!kotlin.jvm.internal.h.a(lower, mc.j.C(upper, "?", "")) && (!mc.j.w(upper, "?", false) || !kotlin.jvm.internal.h.a(lower.concat("?"), upper))) {
            if (!kotlin.jvm.internal.h.a("(" + lower + ")?", upper)) {
                return false;
            }
        }
        return true;
    }

    public static final int r(t1 t1Var) {
        int r12 = t1Var.ordinal();
        if (r12 == 0) {
            return 3;
        }
        if (r12 == 1) {
            return 1;
        }
        if (r12 == 2) {
            return 2;
        }
        throw new j7.p();
    }

    public static final ca.d r0(int r12, int r22) {
        if (r22 > Integer.MIN_VALUE) {
            return new ca.d(r12, r22 - 1);
        }
        ca.d dVar = ca.d.f2253d;
        return ca.d.f2253d;
    }

    public static final void s(InputStream inputStream, FileOutputStream fileOutputStream, int r42) throws IOException {
        byte[] bArr = new byte[r42];
        while (true) {
            int r02 = inputStream.read(bArr);
            if (r02 < 0) {
                return;
            } else {
                fileOutputStream.write(bArr, 0, r02);
            }
        }
    }

    public static int s0(int r52) {
        int[] r12 = {1, 2, 3, 4, 5, 6};
        for (int r22 = 0; r22 < 6; r22++) {
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

    public static final Object t(x9.p pVar, p9.d dVar) {
        kotlinx.coroutines.internal.r rVar = new kotlinx.coroutines.internal.r(dVar, dVar.getContext());
        return d0.B(rVar, rVar, pVar);
    }

    public static int t0(int r22, byte[] bArr) {
        return ((bArr[r22 + 3] & 255) << 24) | (bArr[r22] & 255) | ((bArr[r22 + 1] & 255) << 8) | ((bArr[r22 + 2] & 255) << 16);
    }

    public static final e.h u(Context context) {
        f.a aVar = new f.a(context);
        return new e.h(aVar.f4990a, aVar.f4991b, y.w(new e.c(aVar)), y.w(new e.d(aVar)), y.w(e.e.f4989a), new e.a(), aVar.f4992c);
    }

    public static long u0(long j10, long j11, long j12) {
        long j13 = (j10 ^ j11) * j12;
        long j14 = ((j13 ^ (j13 >>> 47)) ^ j11) * j12;
        return (j14 ^ (j14 >>> 47)) * j12;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final ha.f v(ha.f r5, ma.u r6, boolean r7) {
        /*
            java.lang.String r0 = "descriptor"
            kotlin.jvm.internal.h.f(r6, r0)
            boolean r0 = ob.k.a(r6)
            r1 = 1
            if (r0 != 0) goto L72
            java.util.List r0 = r6.g()
            java.lang.String r2 = "descriptor.valueParameters"
            kotlin.jvm.internal.h.e(r0, r2)
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            boolean r2 = r0 instanceof java.util.Collection
            r3 = 0
            if (r2 == 0) goto L26
            r2 = r0
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L26
            goto L47
        L26:
            java.util.Iterator r0 = r0.iterator()
        L2a:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L47
            java.lang.Object r2 = r0.next()
            ma.a1 r2 = (ma.a1) r2
            cc.e0 r2 = r2.getType()
            java.lang.String r4 = "it.type"
            kotlin.jvm.internal.h.e(r2, r4)
            boolean r2 = ob.k.c(r2)
            if (r2 == 0) goto L2a
            r0 = 1
            goto L48
        L47:
            r0 = 0
        L48:
            if (r0 != 0) goto L72
            cc.e0 r0 = r6.getReturnType()
            if (r0 == 0) goto L58
            boolean r0 = ob.k.c(r0)
            if (r0 != r1) goto L58
            r0 = 1
            goto L59
        L58:
            r0 = 0
        L59:
            if (r0 != 0) goto L72
            boolean r0 = r5 instanceof ha.e
            if (r0 != 0) goto L71
            cc.e0 r0 = J(r6)
            if (r0 == 0) goto L6d
            boolean r0 = ob.k.c(r0)
            if (r0 != r1) goto L6d
            r0 = 1
            goto L6e
        L6d:
            r0 = 0
        L6e:
            if (r0 == 0) goto L71
            goto L72
        L71:
            r1 = 0
        L72:
            if (r1 == 0) goto L7a
            ha.h r0 = new ha.h
            r0.<init>(r5, r6, r7)
            r5 = r0
        L7a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: b8.f.v(ha.f, ma.u, boolean):ha.f");
    }

    public static long v0(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            throw new IndexOutOfBoundsException(v.c(67, "Out of bound index with offput: 0 and length: ", length));
        }
        int r12 = 37;
        if (length <= 32) {
            if (length > 16) {
                long j10 = (length << 1) - 7286425919675154353L;
                long jF0 = F0(0, bArr) * (-5435081209227447693L);
                long jF02 = F0(8, bArr);
                int r02 = length + 0;
                long jF03 = F0(r02 - 8, bArr) * j10;
                return u0((F0(r02 - 16, bArr) * (-7286425919675154353L)) + Long.rotateRight(jF03, 30) + Long.rotateRight(jF0 + jF02, 43), Long.rotateRight(jF02 - 7286425919675154353L, 18) + jF0 + jF03, j10);
            }
            if (length >= 8) {
                long j11 = (length << 1) - 7286425919675154353L;
                long jF04 = F0(0, bArr) - 7286425919675154353L;
                long jF05 = F0((length + 0) - 8, bArr);
                return u0((Long.rotateRight(jF05, 37) * j11) + jF04, (Long.rotateRight(jF04, 25) + jF05) * j11, j11);
            }
            if (length >= 4) {
                return u0(length + ((t0(0, bArr) & BodyPartID.bodyIdMax) << 3), t0((length + 0) - 4, bArr) & BodyPartID.bodyIdMax, (length << 1) - 7286425919675154353L);
            }
            if (length <= 0) {
                return -7286425919675154353L;
            }
            long j12 = (((bArr[0] & 255) + ((bArr[(length >> 1) + 0] & 255) << 8)) * (-7286425919675154353L)) ^ ((length + ((bArr[(length - 1) + 0] & 255) << 2)) * (-4348849565147123417L));
            return (j12 ^ (j12 >>> 47)) * (-7286425919675154353L);
        }
        if (length <= 64) {
            long j13 = (length << 1) - 7286425919675154353L;
            long jF06 = F0(0, bArr) * (-7286425919675154353L);
            long jF07 = F0(8, bArr);
            int r03 = length + 0;
            long jF08 = F0(r03 - 8, bArr) * j13;
            long jRotateRight = Long.rotateRight(jF08, 30) + Long.rotateRight(jF06 + jF07, 43) + (F0(r03 - 16, bArr) * (-7286425919675154353L));
            long jU0 = u0(jRotateRight, Long.rotateRight(jF07 - 7286425919675154353L, 18) + jF06 + jF08, j13);
            long jF09 = F0(16, bArr) * j13;
            long jF010 = F0(24, bArr);
            long jF011 = (F0(r03 - 32, bArr) + jRotateRight) * j13;
            return u0(Long.rotateRight(jF011, 30) + Long.rotateRight(jF09 + jF010, 43) + ((F0(r03 - 24, bArr) + jU0) * j13), Long.rotateRight(jF010 + jF06, 18) + jF09 + jF011, j13);
        }
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long jF012 = F0(0, bArr) + 95310865018149119L;
        int r04 = length - 1;
        int r13 = ((r04 / 64) << 6) + 0;
        int r15 = r04 & 63;
        int r16 = (r13 + r15) - 63;
        long j14 = 2480279821605975764L;
        long j15 = 1390051526045402406L;
        int r17 = 0;
        while (true) {
            long jRotateRight2 = Long.rotateRight(F0(r17 + 8, bArr) + jF012 + j14 + jArr[0], r12) * (-5435081209227447693L);
            long jRotateRight3 = Long.rotateRight(F0(r17 + 48, bArr) + j14 + jArr[1], 42) * (-5435081209227447693L);
            long j16 = jRotateRight2 ^ jArr2[1];
            long jF013 = F0(r17 + 40, bArr) + jArr[0] + jRotateRight3;
            long jRotateRight4 = Long.rotateRight(j15 + jArr2[0], 33) * (-5435081209227447693L);
            B0(bArr, r17, jArr[1] * (-5435081209227447693L), j16 + jArr2[0], jArr);
            B0(bArr, r17 + 32, jRotateRight4 + jArr2[1], F0(r17 + 16, bArr) + jF013, jArr2);
            int r05 = r17 + 64;
            if (r05 == r13) {
                long j17 = (-5435081209227447693L) + ((j16 & 255) << 1);
                long j18 = jArr2[0] + r15;
                jArr2[0] = j18;
                long j19 = jArr[0] + j18;
                jArr[0] = j19;
                jArr2[0] = jArr2[0] + j19;
                long jRotateRight5 = Long.rotateRight(F0(r16 + 8, bArr) + jRotateRight4 + jF013 + jArr[0], 37) * j17;
                long jRotateRight6 = Long.rotateRight(F0(r16 + 48, bArr) + jF013 + jArr[1], 42) * j17;
                long j20 = jRotateRight5 ^ (jArr2[1] * 9);
                long jF014 = F0(r16 + 40, bArr) + (jArr[0] * 9) + jRotateRight6;
                long jRotateRight7 = Long.rotateRight(j16 + jArr2[0], 33) * j17;
                B0(bArr, r16, jArr[1] * j17, j20 + jArr2[0], jArr);
                B0(bArr, r16 + 32, jRotateRight7 + jArr2[1], F0(r16 + 16, bArr) + jF014, jArr2);
                return u0(v.b((jF014 >>> 47) ^ jF014, -4348849565147123417L, u0(jArr[0], jArr2[0], j17), j20), u0(jArr[1], jArr2[1], j17) + jRotateRight7, j17);
            }
            r12 = 37;
            r17 = r05;
            jF012 = jRotateRight4;
            j15 = j16;
            j14 = jF013;
        }
    }

    public static byte[] w(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Expected a string of even length");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int r22 = 0; r22 < length; r22++) {
            int r32 = r22 * 2;
            int r42 = Character.digit(str.charAt(r32), 16);
            int r33 = Character.digit(str.charAt(r32 + 1), 16);
            if (r42 == -1 || r33 == -1) {
                throw new IllegalArgumentException("input is not hexadecimal");
            }
            bArr[r22] = (byte) ((r42 * 16) + r33);
        }
        return bArr;
    }

    public static Rect w0(List list) {
        Iterator it = list.iterator();
        int r02 = Integer.MAX_VALUE;
        int r12 = Integer.MAX_VALUE;
        int r22 = Integer.MIN_VALUE;
        int r32 = Integer.MIN_VALUE;
        while (it.hasNext()) {
            Point point = (Point) it.next();
            r02 = Math.min(r02, point.x);
            r22 = Math.max(r22, point.x);
            r12 = Math.min(r12, point.y);
            r32 = Math.max(r32, point.y);
        }
        return new Rect(r02, r12, r22, r32);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d9, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008d A[LOOP:2: B:24:0x004a->B:49:0x008d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x009e A[EDGE_INSN: B:90:0x009e->B:53:0x009e BREAK  A[LOOP:2: B:24:0x004a->B:49:0x008d], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.net.InetAddress x(int r17, int r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b8.f.x(int, int, java.lang.String):java.net.InetAddress");
    }

    public static p x0(i4 i4Var) {
        if (i4Var == null) {
            return p.f3668i;
        }
        int r02 = i4Var.A() - 1;
        if (r02 == 1) {
            return i4Var.z() ? new t(i4Var.u()) : p.W;
        }
        if (r02 == 2) {
            return i4Var.y() ? new i(Double.valueOf(i4Var.r())) : new i(null);
        }
        if (r02 == 3) {
            return i4Var.x() ? new com.google.android.gms.internal.measurement.g(Boolean.valueOf(i4Var.w())) : new com.google.android.gms.internal.measurement.g(null);
        }
        if (r02 != 4) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        List<i4> listV = i4Var.v();
        ArrayList arrayList = new ArrayList();
        Iterator<i4> it = listV.iterator();
        while (it.hasNext()) {
            arrayList.add(x0(it.next()));
        }
        return new q(i4Var.t(), arrayList);
    }

    public static final void y(h.c cVar, z zVar) throws IOException {
        try {
            Iterator it = ((ArrayList) cVar.g(zVar)).iterator();
            IOException iOException = null;
            while (it.hasNext()) {
                z zVar2 = (z) it.next();
                try {
                    if (cVar.h(zVar2).f5326b) {
                        y(cVar, zVar2);
                    }
                    cVar.d(zVar2);
                } catch (IOException e10) {
                    if (iOException == null) {
                        iOException = e10;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static g5 y0(g5 g5Var) {
        return ((g5Var instanceof i5) || (g5Var instanceof h5)) ? g5Var : g5Var instanceof Serializable ? new h5(g5Var) : new i5(g5Var);
    }

    public static final kotlinx.coroutines.flow.f z(kotlinx.coroutines.flow.f fVar) {
        k.b bVar = kotlinx.coroutines.flow.k.f9073a;
        if (fVar instanceof kotlinx.coroutines.flow.d0) {
            return fVar;
        }
        l9.a aVar = kotlinx.coroutines.flow.k.f9073a;
        k.a aVar2 = kotlinx.coroutines.flow.k.f9074b;
        if (fVar instanceof kotlinx.coroutines.flow.e) {
            kotlinx.coroutines.flow.e eVar = (kotlinx.coroutines.flow.e) fVar;
            if (eVar.f9042b == aVar && eVar.f9043c == aVar2) {
                return fVar;
            }
        }
        return new kotlinx.coroutines.flow.e(fVar);
    }

    public static String z0(String str, Object... objArr) {
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
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String string2 = sb2.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(string2);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", strValueOf.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf) : new String("Exception during lenientFormat for "), (Throwable) e10);
                    String name2 = e10.getClass().getName();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(string2).length() + 9 + name2.length());
                    sb3.append("<");
                    sb3.append(string2);
                    sb3.append(" threw ");
                    sb3.append(name2);
                    sb3.append(">");
                    string = sb3.toString();
                }
            }
            objArr[r12] = string;
            r12++;
        }
        StringBuilder sb4 = new StringBuilder((length * 16) + str.length());
        int r22 = 0;
        while (true) {
            length2 = objArr.length;
            if (r02 >= length2 || (r42 = str.indexOf("%s", r22)) == -1) {
                break;
            }
            sb4.append((CharSequence) str, r22, r42);
            sb4.append(objArr[r02]);
            r22 = r42 + 2;
            r02++;
        }
        sb4.append((CharSequence) str, r22, str.length());
        if (r02 < length2) {
            sb4.append(" [");
            sb4.append(objArr[r02]);
            for (int r11 = r02 + 1; r11 < objArr.length; r11++) {
                sb4.append(", ");
                sb4.append(objArr[r11]);
            }
            sb4.append(']');
        }
        return sb4.toString();
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().d());
    }

    @Override // r2.e
    public Object apply(Object obj) {
        return (byte[]) obj;
    }

    @Override // rc.k
    public void b(rc.r url) {
        kotlin.jvm.internal.h.f(url, "url");
    }

    @Override // h5.j
    public h5.k c(Object obj) {
        Bundle bundle = (Bundle) obj;
        int r02 = l3.c.f9339h;
        if (bundle != null && bundle.containsKey("google.messenger")) {
            bundle = null;
        }
        return h5.n.e(bundle);
    }

    @Override // rc.k
    public void d(rc.r url, List list) {
        kotlin.jvm.internal.h.f(url, "url");
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return new com.google.mlkit.vision.common.internal.a(yVar.h(a.C0066a.class));
    }
}
