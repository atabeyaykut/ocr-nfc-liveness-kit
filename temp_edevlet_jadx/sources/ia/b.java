package ia;

import b8.f;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import lb.c;
import va.x;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f7317a;

    /* renamed from: b, reason: collision with root package name */
    public static final lb.b f7318b;

    static {
        List listT = f.T(x.f18383a, x.f18389h, x.f18390i, x.f18385c, x.f18386d, x.f);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listT.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(lb.b.l((c) it.next()));
        }
        f7317a = linkedHashSet;
        f7318b = lb.b.l(x.f18388g);
    }
}
