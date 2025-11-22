package fb;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final EnumC0087a f5553a;

    /* renamed from: b, reason: collision with root package name */
    public final kb.e f5554b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f5555c;

    /* renamed from: d, reason: collision with root package name */
    public final String[] f5556d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f5557e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5558g;

    /* renamed from: fb.a$a, reason: collision with other inner class name */
    public enum EnumC0087a {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);


        /* renamed from: b, reason: collision with root package name */
        public static final LinkedHashMap f5559b;

        /* renamed from: a, reason: collision with root package name */
        public final int f5566a;

        static {
            EnumC0087a[] enumC0087aArrValues = values();
            int r12 = b8.f.V(enumC0087aArrValues.length);
            LinkedHashMap linkedHashMap = new LinkedHashMap(r12 < 16 ? 16 : r12);
            for (EnumC0087a enumC0087a : enumC0087aArrValues) {
                linkedHashMap.put(Integer.valueOf(enumC0087a.f5566a), enumC0087a);
            }
            f5559b = linkedHashMap;
        }

        EnumC0087a(int r32) {
            this.f5566a = r32;
        }
    }

    public a(EnumC0087a kind, kb.e eVar, String[] strArr, String[] strArr2, String[] strArr3, String str, int r82) {
        h.f(kind, "kind");
        this.f5553a = kind;
        this.f5554b = eVar;
        this.f5555c = strArr;
        this.f5556d = strArr2;
        this.f5557e = strArr3;
        this.f = str;
        this.f5558g = r82;
    }

    public final String toString() {
        return this.f5553a + " version=" + this.f5554b;
    }
}
