package n3;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class j extends UnsupportedOperationException {

    /* renamed from: a, reason: collision with root package name */
    public final m3.d f10559a;

    public j(@NonNull m3.d dVar) {
        this.f10559a = dVar;
    }

    @Override // java.lang.Throwable
    @NonNull
    public final String getMessage() {
        return "Missing ".concat(String.valueOf(this.f10559a));
    }
}
