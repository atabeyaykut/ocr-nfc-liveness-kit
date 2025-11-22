package androidx.core.content;

import android.content.ContentValues;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a=\u0010\u0006\u001a\u00020\u00052.\u0010\u0004\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00010\u0000\"\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"", "Ll9/g;", "", "", "pairs", "Landroid/content/ContentValues;", "contentValuesOf", "([Ll9/g;)Landroid/content/ContentValues;", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class ContentValuesKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final ContentValues contentValuesOf(l9.g<String, ? extends Object>... pairs) {
        kotlin.jvm.internal.h.f(pairs, "pairs");
        ContentValues contentValues = new ContentValues(pairs.length);
        for (l9.g<String, ? extends Object> gVar : pairs) {
            String str = gVar.f9582a;
            B b10 = gVar.f9583b;
            if (b10 == 0) {
                contentValues.putNull(str);
            } else if (b10 instanceof String) {
                contentValues.put(str, (String) b10);
            } else if (b10 instanceof Integer) {
                contentValues.put(str, (Integer) b10);
            } else if (b10 instanceof Long) {
                contentValues.put(str, (Long) b10);
            } else if (b10 instanceof Boolean) {
                contentValues.put(str, (Boolean) b10);
            } else if (b10 instanceof Float) {
                contentValues.put(str, (Float) b10);
            } else if (b10 instanceof Double) {
                contentValues.put(str, (Double) b10);
            } else if (b10 instanceof byte[]) {
                contentValues.put(str, (byte[]) b10);
            } else if (b10 instanceof Byte) {
                contentValues.put(str, (Byte) b10);
            } else {
                if (!(b10 instanceof Short)) {
                    throw new IllegalArgumentException("Illegal value type " + b10.getClass().getCanonicalName() + " for key \"" + str + '\"');
                }
                contentValues.put(str, (Short) b10);
            }
        }
        return contentValues;
    }
}
