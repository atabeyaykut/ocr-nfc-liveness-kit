package g0;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes.dex */
public final class g implements h5.e {

    /* renamed from: a, reason: collision with root package name */
    public Object f5749a;

    /* renamed from: b, reason: collision with root package name */
    public Serializable f5750b;

    /* renamed from: c, reason: collision with root package name */
    public Object f5751c;

    public g() {
    }

    public /* synthetic */ g(l3.c cVar, String str, ScheduledFuture scheduledFuture) {
        this.f5749a = cVar;
        this.f5750b = str;
        this.f5751c = scheduledFuture;
    }

    public final o4.i a() {
        String strConcat = ((String) this.f5749a) == null ? " libraryName" : "";
        if (((Boolean) this.f5750b) == null) {
            strConcat = strConcat.concat(" enableFirelog");
        }
        if (((Integer) this.f5751c) == null) {
            strConcat = String.valueOf(strConcat).concat(" firelogEventType");
        }
        if (strConcat.isEmpty()) {
            return new o4.i((String) this.f5749a, ((Boolean) this.f5750b).booleanValue(), ((Integer) this.f5751c).intValue());
        }
        throw new IllegalStateException(strConcat.length() != 0 ? "Missing required properties:".concat(strConcat) : new String("Missing required properties:"));
    }

    @Override // h5.e
    public final void b(h5.k kVar) {
        l3.c cVar = (l3.c) this.f5749a;
        String str = (String) this.f5750b;
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.f5751c;
        synchronized (cVar.f9342a) {
            cVar.f9342a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    public g(List list) {
        this.f5751c = list;
        this.f5749a = new ArrayList(list.size());
        this.f5750b = new ArrayList(list.size());
        for (int r02 = 0; r02 < list.size(); r02++) {
            ((List) this.f5749a).add(((k0.f) list.get(r02)).f8639b.c());
            ((List) this.f5750b).add(((k0.f) list.get(r02)).f8640c.c());
        }
    }
}
