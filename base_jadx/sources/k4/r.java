package k4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class r implements t6.g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8765a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8766b = false;

    /* renamed from: c, reason: collision with root package name */
    public t6.c f8767c;

    /* renamed from: d, reason: collision with root package name */
    public final o f8768d;

    public r(o oVar) {
        this.f8768d = oVar;
    }

    @Override // t6.g
    @NonNull
    public final t6.g add(@Nullable String str) throws IOException {
        if (this.f8765a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f8765a = true;
        this.f8768d.e(this.f8767c, str, this.f8766b);
        return this;
    }

    @Override // t6.g
    @NonNull
    public final t6.g e(boolean z10) throws IOException {
        if (this.f8765a) {
            throw new t6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f8765a = true;
        this.f8768d.f(this.f8767c, z10 ? 1 : 0, this.f8766b);
        return this;
    }
}
