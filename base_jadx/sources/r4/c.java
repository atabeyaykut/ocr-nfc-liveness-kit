package r4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class c implements t6.g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14099a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14100b = false;

    /* renamed from: c, reason: collision with root package name */
    public t6.c f14101c;

    /* renamed from: d, reason: collision with root package name */
    public final g7 f14102d;

    public c(g7 g7Var) {
        this.f14102d = g7Var;
    }

    @Override // t6.g
    @NonNull
    public final t6.g add(@Nullable String str) throws IOException {
        if (this.f14099a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f14099a = true;
        this.f14102d.e(this.f14101c, str, this.f14100b);
        return this;
    }

    @Override // t6.g
    @NonNull
    public final t6.g e(boolean z10) throws IOException {
        if (this.f14099a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f14099a = true;
        this.f14102d.f(this.f14101c, z10 ? 1 : 0, this.f14100b);
        return this;
    }
}
