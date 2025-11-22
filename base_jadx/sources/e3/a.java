package e3;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import java.util.HashMap;
import r2.d;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray<d> f5104a = new SparseArray<>();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap<d, Integer> f5105b;

    static {
        HashMap<d, Integer> map = new HashMap<>();
        f5105b = map;
        map.put(d.DEFAULT, 0);
        map.put(d.VERY_LOW, 1);
        map.put(d.HIGHEST, 2);
        for (d dVar : map.keySet()) {
            f5104a.append(f5105b.get(dVar).intValue(), dVar);
        }
    }

    public static int a(@NonNull d dVar) {
        Integer num = f5105b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }

    @NonNull
    public static d b(int r22) {
        d dVar = f5104a.get(r22);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("Unknown Priority for value ", r22));
    }
}
