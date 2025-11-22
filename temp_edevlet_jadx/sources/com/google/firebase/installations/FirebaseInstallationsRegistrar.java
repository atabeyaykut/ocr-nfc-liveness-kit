package com.google.firebase.installations;

import androidx.annotation.Keep;
import b7.c;
import b7.d;
import b7.f;
import c6.d;
import c6.e;
import c6.i;
import c6.o;
import i7.g;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public class FirebaseInstallationsRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ d lambda$getComponents$0(e eVar) {
        return new c((x5.c) eVar.a(x5.c.class), eVar.c(g.class), eVar.c(y6.e.class));
    }

    @Override // c6.i
    public List<c6.d<?>> getComponents() {
        d.a aVarA = c6.d.a(b7.d.class);
        aVarA.a(new o(1, 0, x5.c.class));
        aVarA.a(new o(0, 1, y6.e.class));
        aVarA.a(new o(0, 1, g.class));
        aVarA.f2197e = new f(0);
        return Arrays.asList(aVarA.b(), i7.f.a("fire-installations", "17.0.0"));
    }
}
