package t2;

import android.util.SparseArray;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class o {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 t2.o$a, still in use, count: 1, list:
      (r0v0 t2.o$a) from 0x011f: INVOKE (r2v11 android.util.SparseArray<t2.o$a>), (0 int), (r0v0 t2.o$a) VIRTUAL call: android.util.SparseArray.put(int, java.lang.Object):void A[MD:(int, E):void (c)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN_MOBILE_SUBTYPE(0),
        /* JADX INFO: Fake field, exist only in values array */
        GPRS(1),
        /* JADX INFO: Fake field, exist only in values array */
        EDGE(2),
        /* JADX INFO: Fake field, exist only in values array */
        UMTS(3),
        /* JADX INFO: Fake field, exist only in values array */
        CDMA(4),
        /* JADX INFO: Fake field, exist only in values array */
        EVDO_0(5),
        /* JADX INFO: Fake field, exist only in values array */
        EVDO_A(6),
        /* JADX INFO: Fake field, exist only in values array */
        RTT(7),
        /* JADX INFO: Fake field, exist only in values array */
        HSDPA(8),
        /* JADX INFO: Fake field, exist only in values array */
        HSUPA(9),
        /* JADX INFO: Fake field, exist only in values array */
        HSPA(10),
        /* JADX INFO: Fake field, exist only in values array */
        IDEN(11),
        /* JADX INFO: Fake field, exist only in values array */
        EVDO_B(12),
        /* JADX INFO: Fake field, exist only in values array */
        LTE_CA(13),
        /* JADX INFO: Fake field, exist only in values array */
        TD_SCDMA(14),
        /* JADX INFO: Fake field, exist only in values array */
        IWLAN(15),
        /* JADX INFO: Fake field, exist only in values array */
        LTE_CA(16),
        /* JADX INFO: Fake field, exist only in values array */
        TD_SCDMA(17),
        /* JADX INFO: Fake field, exist only in values array */
        IWLAN(18),
        /* JADX INFO: Fake field, exist only in values array */
        LTE_CA(19),
        /* JADX INFO: Fake field, exist only in values array */
        COMBINED(100);


        /* renamed from: a, reason: collision with root package name */
        public static final SparseArray<a> f15634a;

        static {
            SparseArray<a> sparseArray = new SparseArray<>();
            f15634a = sparseArray;
            sparseArray.put(0, aVar);
            sparseArray.put(1, aVar);
            sparseArray.put(2, aVar);
            sparseArray.put(3, aVar);
            sparseArray.put(4, aVar);
            sparseArray.put(5, aVar);
            sparseArray.put(6, aVar);
            sparseArray.put(7, aVar);
            sparseArray.put(8, aVar);
            sparseArray.put(9, aVar);
            sparseArray.put(10, aVar);
            sparseArray.put(11, aVar);
            sparseArray.put(12, aVar);
            sparseArray.put(13, aVar);
            sparseArray.put(14, aVar);
            sparseArray.put(15, aVar);
            sparseArray.put(16, aVar);
            sparseArray.put(17, aVar);
            sparseArray.put(18, aVar);
            sparseArray.put(19, aVar);
        }

        public a(int r32) {
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f15635b.clone();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 t2.o$b, still in use, count: 1, list:
      (r0v0 t2.o$b) from 0x0108: INVOKE (r4v8 android.util.SparseArray<t2.o$b>), (0 int), (r0v0 t2.o$b) VIRTUAL call: android.util.SparseArray.put(int, java.lang.Object):void A[MD:(int, E):void (c)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b {
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE(0),
        /* JADX INFO: Fake field, exist only in values array */
        WIFI(1),
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE_MMS(2),
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE_SUPL(3),
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE_DUN(4),
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE_HIPRI(5),
        /* JADX INFO: Fake field, exist only in values array */
        WIMAX(6),
        /* JADX INFO: Fake field, exist only in values array */
        BLUETOOTH(7),
        /* JADX INFO: Fake field, exist only in values array */
        DUMMY(8),
        /* JADX INFO: Fake field, exist only in values array */
        ETHERNET(9),
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE_FOTA(10),
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE_IMS(11),
        /* JADX INFO: Fake field, exist only in values array */
        MOBILE_CBS(12),
        /* JADX INFO: Fake field, exist only in values array */
        PROXY(13),
        /* JADX INFO: Fake field, exist only in values array */
        VPN(14),
        /* JADX INFO: Fake field, exist only in values array */
        NONE(15),
        /* JADX INFO: Fake field, exist only in values array */
        PROXY(16),
        /* JADX INFO: Fake field, exist only in values array */
        VPN(17),
        /* JADX INFO: Fake field, exist only in values array */
        NONE(-1);


        /* renamed from: a, reason: collision with root package name */
        public static final SparseArray<b> f15636a;

        static {
            SparseArray<b> sparseArray = new SparseArray<>();
            f15636a = sparseArray;
            sparseArray.put(0, bVar);
            sparseArray.put(1, bVar);
            sparseArray.put(2, bVar);
            sparseArray.put(3, bVar);
            sparseArray.put(4, bVar);
            sparseArray.put(5, bVar);
            sparseArray.put(6, bVar);
            sparseArray.put(7, bVar);
            sparseArray.put(8, bVar);
            sparseArray.put(9, bVar);
            sparseArray.put(10, bVar);
            sparseArray.put(11, bVar);
            sparseArray.put(12, bVar);
            sparseArray.put(13, bVar);
            sparseArray.put(14, bVar);
            sparseArray.put(15, bVar);
            sparseArray.put(16, bVar);
            sparseArray.put(17, bVar);
            sparseArray.put(-1, bVar);
        }

        public b(int r32) {
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f15637b.clone();
        }
    }

    @Nullable
    public abstract a a();

    @Nullable
    public abstract b b();
}
