package ha;

import java.util.Arrays;
import java.util.Map;
import x9.l;

/* loaded from: classes2.dex */
public final class d extends kotlin.jvm.internal.j implements l<Map.Entry<? extends String, ? extends Object>, CharSequence> {

    /* renamed from: a, reason: collision with root package name */
    public static final d f7044a = new d();

    public d() {
        super(1);
    }

    @Override // x9.l
    public final CharSequence invoke(Map.Entry<? extends String, ? extends Object> entry) {
        String string;
        Map.Entry<? extends String, ? extends Object> entry2 = entry;
        kotlin.jvm.internal.h.f(entry2, "entry");
        String key = entry2.getKey();
        Object value = entry2.getValue();
        if (value instanceof boolean[]) {
            string = Arrays.toString((boolean[]) value);
        } else if (value instanceof char[]) {
            string = Arrays.toString((char[]) value);
        } else if (value instanceof byte[]) {
            string = Arrays.toString((byte[]) value);
        } else if (value instanceof short[]) {
            string = Arrays.toString((short[]) value);
        } else if (value instanceof int[]) {
            string = Arrays.toString((int[]) value);
        } else if (value instanceof float[]) {
            string = Arrays.toString((float[]) value);
        } else if (value instanceof long[]) {
            string = Arrays.toString((long[]) value);
        } else if (value instanceof double[]) {
            string = Arrays.toString((double[]) value);
        } else {
            if (!(value instanceof Object[])) {
                string = value.toString();
                return key + '=' + string;
            }
            string = Arrays.toString((Object[]) value);
        }
        kotlin.jvm.internal.h.e(string, "toString(this)");
        return key + '=' + string;
    }
}
