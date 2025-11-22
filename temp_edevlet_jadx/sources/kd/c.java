package kd;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public final class c implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final HashMap<String, HashMap<Integer, gd.c>> f8848a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8849b;

    public c(boolean z10) {
        this.f8849b = z10;
    }

    @Nullable
    public final synchronized gd.c a(@NonNull gd.c cVar) {
        if (cVar.f6632s || cVar.f6628n != -1) {
            cVar = b(cVar);
        }
        return cVar;
    }

    @Nullable
    public final gd.c b(@NonNull gd.c cVar) {
        boolean z10 = cVar.f6617a.size() == 0 && cVar.f6618b.size() != 0;
        HashMap<String, HashMap<Integer, gd.c>> map = this.f8848a;
        boolean z11 = this.f8849b;
        if (z10) {
            HashMap<Integer, gd.c> map2 = map.get(z11 ? cVar.f6622g + cVar.f6628n : cVar.f6622g);
            if (map2 == null) {
                return null;
            }
            for (gd.c cVar2 : map2.values()) {
                cVar2.f6621e = cVar.f6621e;
                cVar2.f6619c = cVar.f6618b.getClass().isInstance(gd.c.f6614x) ? cVar.f6618b : Collections.unmodifiableList(cVar.f6618b);
            }
            return null;
        }
        String str = z11 ? cVar.f6622g + cVar.f6628n : cVar.f6622g;
        HashMap<Integer, gd.c> map3 = map.get(str);
        if (map3 == null) {
            map3 = new HashMap<>();
        } else {
            gd.c next = map3.values().iterator().next();
            boolean zIsInstance = next.f6619c.getClass().isInstance(gd.c.f6614x);
            List<Long> listUnmodifiableList = next.f6619c;
            if (!zIsInstance) {
                listUnmodifiableList = Collections.unmodifiableList(listUnmodifiableList);
            }
            cVar.f6619c = listUnmodifiableList;
        }
        map3.put(Integer.valueOf(cVar.hashCode()), cVar);
        map.put(str, map3);
        return cVar;
    }
}
