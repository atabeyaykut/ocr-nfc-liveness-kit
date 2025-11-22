package com.google.firebase.messaging;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import b7.d;
import c6.d;
import c6.e;
import c6.h;
import c6.i;
import c6.o;
import com.google.firebase.messaging.FirebaseMessagingRegistrar;
import i7.f;
import i7.g;
import java.util.Arrays;
import java.util.List;
import x5.c;

@Keep
/* loaded from: classes2.dex */
public class FirebaseMessagingRegistrar implements i {
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(e eVar) {
        return new FirebaseMessaging((c) eVar.a(c.class), (z6.a) eVar.a(z6.a.class), eVar.c(g.class), eVar.c(y6.e.class), (d) eVar.a(d.class), (r2.g) eVar.a(r2.g.class), (x6.d) eVar.a(x6.d.class));
    }

    @Override // c6.i
    @NonNull
    @Keep
    public List<c6.d<?>> getComponents() {
        d.a aVarA = c6.d.a(FirebaseMessaging.class);
        aVarA.a(new o(1, 0, c.class));
        aVarA.a(new o(0, 0, z6.a.class));
        aVarA.a(new o(0, 1, g.class));
        aVarA.a(new o(0, 1, y6.e.class));
        aVarA.a(new o(0, 0, r2.g.class));
        aVarA.a(new o(1, 0, b7.d.class));
        aVarA.a(new o(1, 0, x6.d.class));
        aVarA.f2197e = new h() { // from class: g7.v
            @Override // c6.h
            @NonNull
            public final Object i(@NonNull c6.y yVar) {
                return FirebaseMessagingRegistrar.lambda$getComponents$0(yVar);
            }
        };
        aVarA.c(1);
        return Arrays.asList(aVarA.b(), f.a("fire-fcm", "23.0.0"));
    }
}
