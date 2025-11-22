package kb;

import androidx.exifinterface.media.ExifInterface;
import c5.w;
import java.util.LinkedHashMap;
import java.util.List;
import m9.t;
import mc.j;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8808a = t.g1(b8.f.T('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);

    /* renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f8809b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listT = b8.f.T("Boolean", "Z", "Char", "C", "Byte", "B", "Short", ExifInterface.LATITUDE_SOUTH, "Int", "I", "Float", "F", "Long", "J", "Double", "D");
        int r32 = w.t(0, listT.size() - 1, 2);
        if (r32 >= 0) {
            int r42 = 0;
            while (true) {
                StringBuilder sb2 = new StringBuilder();
                String str = f8808a;
                sb2.append(str);
                sb2.append('/');
                sb2.append((String) listT.get(r42));
                int r82 = r42 + 1;
                linkedHashMap.put(sb2.toString(), listT.get(r82));
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append('/');
                linkedHashMap.put(androidx.camera.camera2.internal.c.h(sb3, (String) listT.get(r42), "Array"), "[" + ((String) listT.get(r82)));
                if (r42 == r32) {
                    break;
                } else {
                    r42 += 2;
                }
            }
        }
        linkedHashMap.put(f8808a + "/Unit", ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        a("Any", "java/lang/Object", linkedHashMap);
        a("Nothing", "java/lang/Void", linkedHashMap);
        a("Annotation", "java/lang/annotation/Annotation", linkedHashMap);
        for (String str2 : b8.f.T("String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum")) {
            a(str2, "java/lang/" + str2, linkedHashMap);
        }
        for (String str3 : b8.f.T("Iterator", "Collection", "List", "Set", "Map", "ListIterator")) {
            a(androidx.browser.browseractions.b.e("collections/", str3), "java/util/" + str3, linkedHashMap);
            a("collections/Mutable" + str3, "java/util/" + str3, linkedHashMap);
        }
        a("collections/Iterable", "java/lang/Iterable", linkedHashMap);
        a("collections/MutableIterable", "java/lang/Iterable", linkedHashMap);
        a("collections/Map.Entry", "java/util/Map$Entry", linkedHashMap);
        a("collections/MutableMap.MutableEntry", "java/util/Map$Entry", linkedHashMap);
        for (int r22 = 0; r22 < 23; r22++) {
            String strD = android.support.v4.media.a.d("Function", r22);
            StringBuilder sb4 = new StringBuilder();
            String str4 = f8808a;
            sb4.append(str4);
            sb4.append("/jvm/functions/Function");
            sb4.append(r22);
            a(strD, sb4.toString(), linkedHashMap);
            a("reflect/KFunction" + r22, str4 + "/reflect/KFunction", linkedHashMap);
        }
        for (String str5 : b8.f.T("Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum")) {
            a(android.support.v4.media.a.f(str5, ".Companion"), f8808a + "/jvm/internal/" + str5 + "CompanionObject", linkedHashMap);
        }
        f8809b = linkedHashMap;
    }

    public static final void a(String str, String str2, LinkedHashMap linkedHashMap) {
        linkedHashMap.put(f8808a + '/' + str, "L" + str2 + ';');
    }

    public static final String b(String classId) {
        kotlin.jvm.internal.h.f(classId, "classId");
        String str = (String) f8809b.get(classId);
        if (str != null) {
            return str;
        }
        return "L" + j.B(classId, '.', '$') + ';';
    }
}
