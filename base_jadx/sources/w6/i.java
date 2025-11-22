package w6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class i implements t6.g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18813a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f18814b = false;

    /* renamed from: c, reason: collision with root package name */
    public t6.c f18815c;

    /* renamed from: d, reason: collision with root package name */
    public final f f18816d;

    public i(f fVar) {
        this.f18816d = fVar;
    }

    @Override // t6.g
    @NonNull
    public final t6.g add(@Nullable String str) throws IOException {
        if (this.f18813a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f18813a = true;
        this.f18816d.e(this.f18815c, str, this.f18814b);
        return this;
    }

    @Override // t6.g
    @NonNull
    public final t6.g e(boolean z10) throws IOException {
        if (this.f18813a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f18813a = true;
        this.f18816d.f(this.f18815c, z10 ? 1 : 0, this.f18814b);
        return this;
    }
}
