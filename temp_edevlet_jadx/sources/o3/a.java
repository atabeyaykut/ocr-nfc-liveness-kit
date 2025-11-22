package o3;

import androidx.annotation.Nullable;
import java.util.Arrays;
import n3.a;
import n3.a.c;

/* loaded from: classes.dex */
public final class a<O extends a.c> {

    /* renamed from: a, reason: collision with root package name */
    public final int f11067a;

    /* renamed from: b, reason: collision with root package name */
    public final n3.a f11068b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final a.c f11069c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f11070d;

    public a(n3.a aVar, @Nullable a.c cVar, @Nullable String str) {
        this.f11068b = aVar;
        this.f11069c = cVar;
        this.f11070d = str;
        this.f11067a = Arrays.hashCode(new Object[]{aVar, cVar, str});
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return r3.p.a(this.f11068b, aVar.f11068b) && r3.p.a(this.f11069c, aVar.f11069c) && r3.p.a(this.f11070d, aVar.f11070d);
    }

    public final int hashCode() {
        return this.f11067a;
    }
}
