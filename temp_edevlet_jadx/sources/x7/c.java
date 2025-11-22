package x7;

import java.util.Arrays;
import java.util.concurrent.Executor;
import r3.p;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f19183a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f19184b = null;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f19183a == cVar.f19183a && p.a(this.f19184b, cVar.f19184b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f19183a), this.f19184b});
    }
}
