package s4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class e1 implements t6.g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14959a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14960b = false;

    /* renamed from: c, reason: collision with root package name */
    public t6.c f14961c;

    /* renamed from: d, reason: collision with root package name */
    public final b1 f14962d;

    public e1(b1 b1Var) {
        this.f14962d = b1Var;
    }

    @Override // t6.g
    @NonNull
    public final t6.g add(@Nullable String str) throws IOException {
        if (this.f14959a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f14959a = true;
        this.f14962d.e(this.f14961c, str, this.f14960b);
        return this;
    }

    @Override // t6.g
    @NonNull
    public final t6.g e(boolean z10) throws IOException {
        if (this.f14959a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f14959a = true;
        this.f14962d.f(this.f14961c, z10 ? 1 : 0, this.f14960b);
        return this;
    }
}
