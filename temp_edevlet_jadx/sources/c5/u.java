package c5;

import android.view.View;
import c8.a;
import com.google.android.gms.internal.measurement.q9;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.bouncycastle.asn1.cmc.BodyPartID;
import s4.ca;
import tr.gov.turkiye.edevlet.kapisi.R;
import u7.c;

/* loaded from: classes.dex */
public final /* synthetic */ class u implements p2, com.airbnb.epoxy.n0, ca, eb.z, l7.j, r2.e, c6.h, z0.a {

    /* renamed from: n, reason: collision with root package name */
    public static pg.l f2024n;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ u f2013a = new u();

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f2014b = {"firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "last_advertising_id_reset", "first_open_after_install", "lifetime_user_engagement", "session_user_engagement", "non_personalized_ads", "ga_session_number", "ga_session_id", "last_gclid", "session_number", "session_id"};

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f2015c = {"_ln", "_fot", "_fvt", "_ldl", "_id", "_lair", "_fi", "_lte", "_se", "_npa", "_sno", "_sid", "_lgclid", "_sno", "_sid"};

    /* renamed from: d, reason: collision with root package name */
    public static final com.google.android.gms.internal.vision.h3 f2016d = new com.google.android.gms.internal.vision.h3();

    /* renamed from: e, reason: collision with root package name */
    public static final com.google.android.gms.internal.vision.j3 f2017e = new com.google.android.gms.internal.vision.j3();
    public static final /* synthetic */ u f = new u();

    /* renamed from: g, reason: collision with root package name */
    public static final u f2018g = new u();

    /* renamed from: h, reason: collision with root package name */
    public static final char[] f2019h = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f2020j = {R.attr.ucrop_artv_ratio_title, R.attr.ucrop_artv_ratio_x, R.attr.ucrop_artv_ratio_y};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f2021k = {R.attr.ucrop_aspect_ratio_x, R.attr.ucrop_aspect_ratio_y, R.attr.ucrop_circle_dimmed_layer, R.attr.ucrop_dimmed_color, R.attr.ucrop_frame_color, R.attr.ucrop_frame_stroke_size, R.attr.ucrop_grid_color, R.attr.ucrop_grid_column_count, R.attr.ucrop_grid_row_count, R.attr.ucrop_grid_stroke_size, R.attr.ucrop_show_frame, R.attr.ucrop_show_grid, R.attr.ucrop_show_oval_crop_frame};

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ u f2022l = new u();

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f2023m = {"android.permission.READ_EXTERNAL_STORAGE"};

    /* renamed from: p, reason: collision with root package name */
    public static final String[] f2025p = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};

    /* renamed from: q, reason: collision with root package name */
    public static final u f2026q = new u();

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ u f2027r = new u();

    /* renamed from: s, reason: collision with root package name */
    public static final int[] f2028s = {R.attr.ambientEnabled, R.attr.backgroundColor, R.attr.cameraBearing, R.attr.cameraMaxZoomPreference, R.attr.cameraMinZoomPreference, R.attr.cameraTargetLat, R.attr.cameraTargetLng, R.attr.cameraTilt, R.attr.cameraZoom, R.attr.latLngBoundsNorthEastLatitude, R.attr.latLngBoundsNorthEastLongitude, R.attr.latLngBoundsSouthWestLatitude, R.attr.latLngBoundsSouthWestLongitude, R.attr.liteMode, R.attr.mapId, R.attr.mapType, R.attr.uiCompass, R.attr.uiMapToolbar, R.attr.uiRotateGestures, R.attr.uiScrollGestures, R.attr.uiScrollGesturesDuringRotateOrZoom, R.attr.uiTiltGestures, R.attr.uiZoomControls, R.attr.uiZoomGestures, R.attr.useViewLifecycle, R.attr.zOrderOnTop};

    public static final int j(char c10) {
        boolean z10 = false;
        if ('0' <= c10 && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (!('a' <= c10 && c10 <= 'f')) {
            c11 = 'A';
            if ('A' <= c10 && c10 <= 'F') {
                z10 = true;
            }
            if (!z10) {
                throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Character.valueOf(c10), "Unexpected hex digit: "));
            }
        }
        return (c10 - c11) + 10;
    }

    public static final cc.e0 k(ArrayList arrayList, List list, ja.k kVar) {
        cc.e0 e0VarK = cc.p1.e(new cc.t0(arrayList)).k((cc.e0) m9.t.a1(list), cc.t1.OUT_VARIANCE);
        return e0VarK == null ? kVar.o() : e0VarK;
    }

    public static byte[] m(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("The key length in bytes must be 32.");
        }
        byte b10 = 0;
        long jO = (o(0, bArr) >> 0) & 67108863 & 67108863;
        long jO2 = (o(3, bArr) >> 2) & 67108863 & 67108611;
        long jO3 = (o(6, bArr) >> 4) & 67108863 & 67092735;
        long jO4 = (o(9, bArr) >> 6) & 67108863 & 66076671;
        long jO5 = (o(12, bArr) >> 8) & 67108863 & 1048575;
        long j10 = jO2 * 5;
        long j11 = jO3 * 5;
        long j12 = jO4 * 5;
        long j13 = jO5 * 5;
        int r32 = 17;
        byte[] bArr3 = new byte[17];
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        long j18 = 0;
        int r12 = 0;
        while (r12 < bArr2.length) {
            int r11 = Math.min(16, bArr2.length - r12);
            System.arraycopy(bArr2, r12, bArr3, b10, r11);
            bArr3[r11] = 1;
            if (r11 != 16) {
                Arrays.fill(bArr3, r11 + 1, r32, b10);
            }
            long jO6 = j18 + ((o(b10, bArr3) >> b10) & 67108863);
            long jO7 = j14 + ((o(3, bArr3) >> 2) & 67108863);
            long jO8 = j15 + ((o(6, bArr3) >> 4) & 67108863);
            long jO9 = j16 + ((o(9, bArr3) >> 6) & 67108863);
            long jO10 = j17 + (((o(12, bArr3) >> 8) & 67108863) | (bArr3[16] << 24));
            long j19 = (jO10 * j10) + (jO9 * j11) + (jO8 * j12) + (jO7 * j13) + (jO6 * jO);
            long j20 = (jO10 * j11) + (jO9 * j12) + (jO8 * j13) + (jO7 * jO) + (jO6 * jO2);
            long j21 = (jO10 * j12) + (jO9 * j13) + (jO8 * jO) + (jO7 * jO2) + (jO6 * jO3);
            long j22 = (jO10 * j13) + (jO9 * jO) + (jO8 * jO2) + (jO7 * jO3) + (jO6 * jO4);
            long j23 = jO9 * jO2;
            long j24 = jO10 * jO;
            long j25 = j20 + (j19 >> 26);
            long j26 = j21 + (j25 >> 26);
            long j27 = j22 + (j26 >> 26);
            long j28 = j24 + j23 + (jO8 * jO3) + (jO7 * jO4) + (jO6 * jO5) + (j27 >> 26);
            long j29 = j28 >> 26;
            j17 = j28 & 67108863;
            long j30 = (j29 * 5) + (j19 & 67108863);
            r12 += 16;
            j15 = j26 & 67108863;
            j16 = j27 & 67108863;
            j18 = j30 & 67108863;
            j14 = (j25 & 67108863) + (j30 >> 26);
            b10 = 0;
            r32 = 17;
        }
        long j31 = j15 + (j14 >> 26);
        long j32 = j31 & 67108863;
        long j33 = j16 + (j31 >> 26);
        long j34 = j33 & 67108863;
        long j35 = j17 + (j33 >> 26);
        long j36 = j35 & 67108863;
        long j37 = ((j35 >> 26) * 5) + j18;
        long j38 = j37 >> 26;
        long j39 = j37 & 67108863;
        long j40 = (j14 & 67108863) + j38;
        long j41 = j39 + 5;
        long j42 = j41 & 67108863;
        long j43 = j40 + (j41 >> 26);
        long j44 = j32 + (j43 >> 26);
        long j45 = j34 + (j44 >> 26);
        long j46 = (j36 + (j45 >> 26)) - 67108864;
        long j47 = j46 >> 63;
        long j48 = ~j47;
        long j49 = (j40 & j47) | (j43 & 67108863 & j48);
        long j50 = (j32 & j47) | (j44 & 67108863 & j48);
        long j51 = (j45 & 67108863 & j48) | (j34 & j47);
        long j52 = ((j39 & j47) | (j42 & j48) | (j49 << 26)) & BodyPartID.bodyIdMax;
        long j53 = ((j49 >> 6) | (j50 << 20)) & BodyPartID.bodyIdMax;
        long j54 = ((j50 >> 12) | (j51 << 14)) & BodyPartID.bodyIdMax;
        long j55 = ((j51 >> 18) | (((j46 & j48) | (j36 & j47)) << 8)) & BodyPartID.bodyIdMax;
        long jO11 = o(16, bArr) + j52;
        long j56 = jO11 & BodyPartID.bodyIdMax;
        long jO12 = o(20, bArr) + j53 + (jO11 >> 32);
        long j57 = jO12 & BodyPartID.bodyIdMax;
        long jO13 = o(24, bArr) + j54 + (jO12 >> 32);
        long j58 = jO13 & BodyPartID.bodyIdMax;
        long jO14 = (o(28, bArr) + j55 + (jO13 >> 32)) & BodyPartID.bodyIdMax;
        byte[] bArr4 = new byte[16];
        q(bArr4, j56, 0);
        q(bArr4, j57, 4);
        q(bArr4, j58, 8);
        q(bArr4, jO14, 12);
        return bArr4;
    }

    public static void n(v.e eVar, View view) {
        eVar.f18174a.put("md.custom_view_no_vertical_padding", true);
        eVar.f.getContentLayout().b(null, view, false, true, false);
    }

    public static long o(int r22, byte[] bArr) {
        return (((bArr[r22 + 3] & 255) << 24) | (bArr[r22] & 255) | ((bArr[r22 + 1] & 255) << 8) | ((bArr[r22 + 2] & 255) << 16)) & BodyPartID.bodyIdMax;
    }

    public static final cc.e0 p(ma.w0 w0Var) {
        ArrayList arrayList;
        kotlin.jvm.internal.h.f(w0Var, "<this>");
        ma.j jVarB = w0Var.b();
        kotlin.jvm.internal.h.e(jVarB, "this.containingDeclaration");
        if (jVarB instanceof ma.h) {
            List<ma.w0> parameters = ((ma.h) jVarB).i().getParameters();
            kotlin.jvm.internal.h.e(parameters, "descriptor.typeConstructor.parameters");
            List<ma.w0> list = parameters;
            arrayList = new ArrayList(m9.n.Q0(list));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                cc.c1 c1VarI = ((ma.w0) it.next()).i();
                kotlin.jvm.internal.h.e(c1VarI, "it.typeConstructor");
                arrayList.add(c1VarI);
            }
        } else {
            if (!(jVarB instanceof ma.u)) {
                throw new IllegalArgumentException("Unsupported descriptor type to build star projection type based on type parameters of it");
            }
            List<ma.w0> typeParameters = ((ma.u) jVarB).getTypeParameters();
            kotlin.jvm.internal.h.e(typeParameters, "descriptor.typeParameters");
            List<ma.w0> list2 = typeParameters;
            arrayList = new ArrayList(m9.n.Q0(list2));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                cc.c1 c1VarI2 = ((ma.w0) it2.next()).i();
                kotlin.jvm.internal.h.e(c1VarI2, "it.typeConstructor");
                arrayList.add(c1VarI2);
            }
        }
        List<cc.e0> upperBounds = w0Var.getUpperBounds();
        kotlin.jvm.internal.h.e(upperBounds, "upperBounds");
        return k(arrayList, upperBounds, sb.b.e(w0Var));
    }

    public static void q(byte[] bArr, long j10, int r72) {
        int r02 = 0;
        while (r02 < 4) {
            bArr[r72 + r02] = (byte) (255 & j10);
            r02++;
            j10 >>= 8;
        }
    }

    public static int r(int r02) {
        switch (r02) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            default:
                return 0;
        }
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().a());
    }

    @Override // r2.e
    public Object apply(Object obj) {
        return (byte[]) obj;
    }

    @Override // com.airbnb.epoxy.n0
    public void b(String str) {
    }

    @Override // s4.ca
    public Object c(Object obj) {
        return ((a.b) obj).a();
    }

    @Override // eb.z
    public void d(ma.e classDescriptor) {
        kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
    }

    @Override // eb.z
    public void e(ma.e eVar) {
    }

    @Override // z0.a
    public void f(v0.f fVar, x0.g gVar) {
    }

    @Override // z0.a
    public File g(v0.f fVar) {
        return null;
    }

    @Override // l7.j
    public Object h() {
        return new l7.i();
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return new u7.c(yVar.h(c.a.class));
    }

    public cc.e0 l(LinkedHashSet types) {
        kotlin.jvm.internal.h.f(types, "types");
        throw new AssertionError("There should be no intersection type in existing descriptors, but found: ".concat(m9.t.g1(types, null, null, null, null, 63)));
    }

    @Override // com.airbnb.epoxy.n0
    public void stop() {
    }
}
