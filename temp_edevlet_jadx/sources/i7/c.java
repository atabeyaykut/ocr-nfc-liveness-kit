package i7;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public static volatile c f7310b;

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f7311a = new HashSet();

    public final Set<d> a() {
        Set<d> setUnmodifiableSet;
        synchronized (this.f7311a) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.f7311a);
        }
        return setUnmodifiableSet;
    }
}
