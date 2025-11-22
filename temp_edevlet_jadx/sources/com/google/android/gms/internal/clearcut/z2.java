package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class z2 extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3352a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final p9.f f3353b;

    public z2() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f3353b = null;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        switch (this.f3352a) {
            case 1:
                setStackTrace(new StackTraceElement[0]);
                return this;
            default:
                return super.fillInStackTrace();
        }
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        switch (this.f3352a) {
            case 1:
                return this.f3353b.toString();
            default:
                return super.getLocalizedMessage();
        }
    }

    public z2(p9.f fVar) {
        this.f3353b = fVar;
    }
}
