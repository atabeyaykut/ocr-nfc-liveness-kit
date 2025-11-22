package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import c6.d;
import c6.e;
import c6.i;
import c6.o;
import com.google.android.gms.internal.measurement.d2;
import i7.f;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import r3.r;
import x5.c;
import x6.b;
import x6.d;
import z5.a;

@Keep
/* loaded from: classes2.dex */
public class AnalyticsConnectorRegistrar implements i {
    public static a lambda$getComponents$0(e eVar) {
        c cVar = (c) eVar.a(c.class);
        Context context = (Context) eVar.a(Context.class);
        d dVar = (d) eVar.a(d.class);
        r.i(cVar);
        r.i(context);
        r.i(dVar);
        r.i(context.getApplicationContext());
        if (z5.c.f19844c == null) {
            synchronized (z5.c.class) {
                if (z5.c.f19844c == null) {
                    Bundle bundle = new Bundle(1);
                    cVar.a();
                    if ("[DEFAULT]".equals(cVar.f19166b)) {
                        dVar.a(new Executor() { // from class: z5.e
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                runnable.run();
                            }
                        }, new b() { // from class: z5.d
                            @Override // x6.b
                            public final void a(x6.a aVar) {
                                aVar.getClass();
                                throw null;
                            }
                        });
                        bundle.putBoolean("dataCollectionDefaultEnabled", cVar.f());
                    }
                    z5.c.f19844c = new z5.c(d2.c(context, bundle).f3436b);
                }
            }
        }
        return z5.c.f19844c;
    }

    @Override // c6.i
    @NonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<c6.d<?>> getComponents() {
        d.a aVarA = c6.d.a(a.class);
        aVarA.a(new o(1, 0, c.class));
        aVarA.a(new o(1, 0, Context.class));
        aVarA.a(new o(1, 0, x6.d.class));
        aVarA.f2197e = a6.a.f110a;
        aVarA.c(2);
        return Arrays.asList(aVarA.b(), f.a("fire-analytics", "20.0.0"));
    }
}
