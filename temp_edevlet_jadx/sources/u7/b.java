package u7;

import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import java.util.Arrays;
import java.util.EnumMap;
import o4.t;
import r3.p;

/* loaded from: classes2.dex */
public abstract class b {
    static {
        new EnumMap(w7.a.class);
        new EnumMap(w7.a.class);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        ((b) obj).getClass();
        return p.a(null, null) && p.a(null, null) && p.a(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{null, null, null});
    }

    @RecentlyNonNull
    public final String toString() {
        t tVar = new t();
        tVar.a("modelName");
        tVar.a("baseModel");
        tVar.a("modelType");
        return tVar.toString();
    }
}
