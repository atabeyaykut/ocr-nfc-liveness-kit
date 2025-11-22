package androidx.work;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.Data;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;

@Metadata(d1 = {"\u0000\"\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a@\u0010\u0006\u001a\u00020\u00052.\u0010\u0004\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00010\u0000\"\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0007\u001a!\u0010\u000b\u001a\u00020\n\"\n\b\u0000\u0010\b\u0018\u0001*\u00020\u0003*\u00020\u00052\u0006\u0010\t\u001a\u00020\u0002H\u0086\b¨\u0006\f"}, d2 = {"", "Ll9/g;", "", "", "pairs", "Landroidx/work/Data;", "workDataOf", "([Ll9/g;)Landroidx/work/Data;", ExifInterface.GPS_DIRECTION_TRUE, "key", "", "hasKeyWithValueOfType", "work-runtime-ktx_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class DataKt {
    public static final <T> boolean hasKeyWithValueOfType(Data data, String key) {
        h.f(data, "<this>");
        h.f(key, "key");
        h.m();
        throw null;
    }

    public static final Data workDataOf(g<String, ? extends Object>... pairs) throws Throwable {
        h.f(pairs, "pairs");
        Data.Builder builder = new Data.Builder();
        int length = pairs.length;
        int r22 = 0;
        while (r22 < length) {
            g<String, ? extends Object> gVar = pairs[r22];
            r22++;
            builder.put(gVar.f9582a, gVar.f9583b);
        }
        Data dataBuild = builder.build();
        h.e(dataBuild, "dataBuilder.build()");
        return dataBuild;
    }
}
