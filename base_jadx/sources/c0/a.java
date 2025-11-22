package c0;

import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class a extends RuntimeException {
    public /* synthetic */ a() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public /* synthetic */ a(String str) {
        super(str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(String errorMessage, int r32) {
        super(errorMessage);
        if (r32 == 1) {
            super(errorMessage);
        } else {
            h.f(errorMessage, "errorMessage");
        }
    }
}
