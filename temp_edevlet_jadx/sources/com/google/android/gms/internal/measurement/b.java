package com.google.android.gms.internal.measurement;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public String f3379a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3380b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3381c;

    public b(String str, long j10, HashMap map) {
        this.f3379a = str;
        this.f3380b = j10;
        HashMap map2 = new HashMap();
        this.f3381c = map2;
        if (map != null) {
            map2.putAll(map);
        }
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final b clone() {
        return new b(this.f3379a, this.f3380b, new HashMap(this.f3381c));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f3380b == bVar.f3380b && this.f3379a.equals(bVar.f3379a)) {
            return this.f3381c.equals(bVar.f3381c);
        }
        return false;
    }

    public final int hashCode() {
        int r02 = this.f3379a.hashCode() * 31;
        long j10 = this.f3380b;
        return this.f3381c.hashCode() + ((r02 + ((int) (j10 ^ (j10 >>> 32)))) * 31);
    }

    public final String toString() {
        String str = this.f3379a;
        String string = this.f3381c.toString();
        StringBuilder sb2 = new StringBuilder(string.length() + String.valueOf(str).length() + 55);
        sb2.append("Event{name='");
        sb2.append(str);
        sb2.append("', timestamp=");
        sb2.append(this.f3380b);
        sb2.append(", params=");
        sb2.append(string);
        sb2.append('}');
        return sb2.toString();
    }
}
