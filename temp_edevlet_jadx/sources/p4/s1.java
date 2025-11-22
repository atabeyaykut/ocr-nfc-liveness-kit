package p4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class s1 implements t6.g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f12666a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12667b = false;

    /* renamed from: c, reason: collision with root package name */
    public t6.c f12668c;

    /* renamed from: d, reason: collision with root package name */
    public final p1 f12669d;

    public s1(p1 p1Var) {
        this.f12669d = p1Var;
    }

    @Override // t6.g
    @NonNull
    public final t6.g add(@Nullable String str) throws IOException {
        if (this.f12666a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f12666a = true;
        this.f12669d.e(this.f12668c, str, this.f12667b);
        return this;
    }

    @Override // t6.g
    @NonNull
    public final t6.g e(boolean z10) throws IOException {
        if (this.f12666a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f12666a = true;
        this.f12669d.f(this.f12668c, z10 ? 1 : 0, this.f12667b);
        return this;
    }
}
