package z7;

import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import p4.a8;
import p4.d8;
import p4.e8;
import p4.i9;
import p4.k9;
import p4.o7;
import p4.p7;
import p4.q0;
import p4.q7;
import p4.v9;
import p4.y9;
import p4.z7;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray<z7> f19849a;

    /* renamed from: b, reason: collision with root package name */
    public static final SparseArray<a8> f19850b;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    public static final AtomicReference<String> f19851c;

    /* renamed from: d, reason: collision with root package name */
    @SuppressLint({"UseSparseArrays"})
    public static final HashMap f19852d;

    static {
        SparseArray<z7> sparseArray = new SparseArray<>();
        f19849a = sparseArray;
        SparseArray<a8> sparseArray2 = new SparseArray<>();
        f19850b = sparseArray2;
        f19851c = new AtomicReference<>();
        sparseArray.put(-1, z7.FORMAT_UNKNOWN);
        sparseArray.put(1, z7.FORMAT_CODE_128);
        sparseArray.put(2, z7.FORMAT_CODE_39);
        sparseArray.put(4, z7.FORMAT_CODE_93);
        sparseArray.put(8, z7.FORMAT_CODABAR);
        sparseArray.put(16, z7.FORMAT_DATA_MATRIX);
        sparseArray.put(32, z7.FORMAT_EAN_13);
        sparseArray.put(64, z7.FORMAT_EAN_8);
        sparseArray.put(128, z7.FORMAT_ITF);
        sparseArray.put(256, z7.FORMAT_QR_CODE);
        sparseArray.put(512, z7.FORMAT_UPC_A);
        sparseArray.put(1024, z7.FORMAT_UPC_E);
        sparseArray.put(2048, z7.FORMAT_PDF417);
        sparseArray.put(4096, z7.FORMAT_AZTEC);
        sparseArray2.put(0, a8.TYPE_UNKNOWN);
        sparseArray2.put(1, a8.TYPE_CONTACT_INFO);
        sparseArray2.put(2, a8.TYPE_EMAIL);
        sparseArray2.put(3, a8.TYPE_ISBN);
        sparseArray2.put(4, a8.TYPE_PHONE);
        sparseArray2.put(5, a8.TYPE_PRODUCT);
        sparseArray2.put(6, a8.TYPE_SMS);
        sparseArray2.put(7, a8.TYPE_TEXT);
        sparseArray2.put(8, a8.TYPE_URL);
        sparseArray2.put(9, a8.TYPE_WIFI);
        sparseArray2.put(10, a8.TYPE_GEO);
        sparseArray2.put(11, a8.TYPE_CALENDAR_EVENT);
        sparseArray2.put(12, a8.TYPE_DRIVER_LICENSE);
        HashMap map = new HashMap();
        f19852d = map;
        map.put(1, i9.CODE_128);
        map.put(2, i9.CODE_39);
        map.put(4, i9.CODE_93);
        map.put(8, i9.CODABAR);
        map.put(16, i9.DATA_MATRIX);
        map.put(32, i9.EAN_13);
        map.put(64, i9.EAN_8);
        map.put(128, i9.ITF);
        map.put(256, i9.QR_CODE);
        map.put(512, i9.UPC_A);
        map.put(1024, i9.UPC_E);
        map.put(2048, i9.PDF417);
        map.put(4096, i9.AZTEC);
    }

    public static k9 a(x7.c cVar) {
        int r42 = cVar.f19183a;
        q0 q0Var = new q0();
        HashMap map = f19852d;
        if (r42 == 0) {
            q0Var.b(map.values());
        } else {
            for (Map.Entry entry : map.entrySet()) {
                if ((((Integer) entry.getKey()).intValue() & r42) != 0) {
                    q0Var.a((i9) entry.getValue());
                }
            }
        }
        com.airbnb.epoxy.a aVar = new com.airbnb.epoxy.a(4);
        aVar.f2536b = q0Var.d();
        return new k9(aVar);
    }

    public static String b() {
        AtomicReference<String> atomicReference = f19851c;
        if (atomicReference.get() != null) {
            return atomicReference.get();
        }
        String str = true != (DynamiteModule.a(v7.h.c().b(), ModuleDescriptor.MODULE_ID) > 0) ? "play-services-mlkit-barcode-scanning" : "barcode-scanning";
        atomicReference.set(str);
        return str;
    }

    public static void c(v9 v9Var, o7 o7Var) {
        p7 p7Var = p7.ON_DEVICE_BARCODE_LOAD;
        v9Var.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (v9Var.e(p7Var, jElapsedRealtime)) {
            v9Var.f12753h.put(p7Var, Long.valueOf(jElapsedRealtime));
            q7 q7Var = new q7();
            d8 d8Var = new d8();
            d8Var.f12311a = o7Var;
            q7Var.f12621e = new e8(d8Var);
            v9Var.c(new y9(q7Var, 0), p7Var, v9Var.d());
        }
    }
}
