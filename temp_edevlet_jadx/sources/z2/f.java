package z2;

import a3.c;
import a3.e;
import androidx.work.WorkRequest;
import d3.b;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class f implements x2.b<a3.e> {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<d3.a> f19787a = b.a.f4653a;

    @Override // k9.a
    public final Object get() {
        d3.a aVar = this.f19787a.get();
        HashMap map = new HashMap();
        r2.d dVar = r2.d.DEFAULT;
        c.a aVar2 = new c.a();
        Set<e.b> setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            throw new NullPointerException("Null flags");
        }
        aVar2.f56c = setEmptySet;
        aVar2.f54a = Long.valueOf(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
        aVar2.f55b = 86400000L;
        map.put(dVar, aVar2.a());
        r2.d dVar2 = r2.d.HIGHEST;
        c.a aVar3 = new c.a();
        Set<e.b> setEmptySet2 = Collections.emptySet();
        if (setEmptySet2 == null) {
            throw new NullPointerException("Null flags");
        }
        aVar3.f56c = setEmptySet2;
        aVar3.f54a = 1000L;
        aVar3.f55b = 86400000L;
        map.put(dVar2, aVar3.a());
        r2.d dVar3 = r2.d.VERY_LOW;
        c.a aVar4 = new c.a();
        Set<e.b> setEmptySet3 = Collections.emptySet();
        if (setEmptySet3 == null) {
            throw new NullPointerException("Null flags");
        }
        aVar4.f56c = setEmptySet3;
        aVar4.f54a = 86400000L;
        aVar4.f55b = 86400000L;
        Set<e.b> setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(e.b.NETWORK_UNMETERED, e.b.DEVICE_IDLE)));
        if (setUnmodifiableSet == null) {
            throw new NullPointerException("Null flags");
        }
        aVar4.f56c = setUnmodifiableSet;
        map.put(dVar3, aVar4.a());
        if (aVar == null) {
            throw new NullPointerException("missing required property: clock");
        }
        if (map.keySet().size() < r2.d.values().length) {
            throw new IllegalStateException("Not all priorities have been configured");
        }
        new HashMap();
        return new a3.b(aVar, map);
    }
}
