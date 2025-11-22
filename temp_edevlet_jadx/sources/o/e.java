package o;

import rc.b0;

/* loaded from: classes.dex */
public final class e extends RuntimeException {
    public /* synthetic */ e() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public e(b0 b0Var) {
        super("HTTP " + b0Var.f14389e + ": " + b0Var.f14388d);
    }
}
