package r0;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import java.util.UUID;

/* loaded from: classes.dex */
public final class x extends ViewModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f13877a;

    public x(SavedStateHandle state) {
        kotlin.jvm.internal.h.f(state, "state");
        String str = (String) state.get("mavericks:persisted_view_id");
        if (str == null) {
            str = "MavericksView_" + UUID.randomUUID().toString();
            state.set("mavericks:persisted_view_id", str);
            l9.m mVar = l9.m.f9594a;
        }
        this.f13877a = str;
    }
}
