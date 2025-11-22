package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import c6.d;
import c6.e;
import c6.i;
import c6.o;
import java.util.Collections;
import java.util.List;
import r2.g;
import s2.a;
import u2.w;

@Keep
/* loaded from: classes2.dex */
public class TransportRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g lambda$getComponents$0(e eVar) {
        w.b((Context) eVar.a(Context.class));
        return w.a().c(a.f);
    }

    @Override // c6.i
    public List<d<?>> getComponents() {
        d.a aVarA = d.a(g.class);
        aVarA.a(new o(1, 0, Context.class));
        aVarA.f2197e = new androidx.camera.core.impl.a();
        return Collections.singletonList(aVarA.b());
    }
}
