package p4;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a2 {

    /* renamed from: a, reason: collision with root package name */
    public final o7 f12242a;

    /* renamed from: b, reason: collision with root package name */
    public final Boolean f12243b;

    /* renamed from: c, reason: collision with root package name */
    public final k9 f12244c;

    /* renamed from: d, reason: collision with root package name */
    public final u0<z7> f12245d;

    /* renamed from: e, reason: collision with root package name */
    public final u0<a8> f12246e;

    public /* synthetic */ a2(z1 z1Var) {
        this.f12242a = z1Var.f12797a;
        this.f12243b = z1Var.f12798b;
        this.f12244c = z1Var.f12799c;
        this.f12245d = z1Var.f12800d;
        this.f12246e = z1Var.f12801e;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a2)) {
            return false;
        }
        a2 a2Var = (a2) obj;
        return r3.p.a(this.f12242a, a2Var.f12242a) && r3.p.a(null, null) && r3.p.a(this.f12243b, a2Var.f12243b) && r3.p.a(null, null) && r3.p.a(this.f12244c, a2Var.f12244c) && r3.p.a(this.f12245d, a2Var.f12245d) && r3.p.a(this.f12246e, a2Var.f12246e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12242a, null, this.f12243b, null, this.f12244c, this.f12245d, this.f12246e});
    }
}
