package n3;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@Deprecated
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f10558a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    public interface a extends o3.c {
    }

    @Deprecated
    public interface b extends o3.j {
    }

    @NonNull
    public static Set<d> a() {
        Set<d> set = f10558a;
        synchronized (set) {
        }
        return set;
    }
}
