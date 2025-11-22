package ma;

import r0.f1;

/* loaded from: classes2.dex */
public final class w extends IllegalStateException {
    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ w(Class viewModelClass, f1 viewModelContext, String key) {
        kotlin.jvm.internal.h.f(viewModelClass, "viewModelClass");
        kotlin.jvm.internal.h.f(viewModelContext, "viewModelContext");
        kotlin.jvm.internal.h.f(key, "key");
        String message = "ViewModel of type " + viewModelClass.getName() + " for " + viewModelContext.b() + '[' + key + "] does not exist yet!";
        kotlin.jvm.internal.h.f(message, "message");
        super(message);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w(String message, int r32) {
        super(message);
        if (r32 == 1) {
            super(message);
        } else {
            kotlin.jvm.internal.h.f(message, "message");
        }
    }
}
