package com.google.mlkit.vision.barcode.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.mlkit.vision.common.internal.MobileVisionBase;
import java.util.List;
import java.util.concurrent.Executor;
import p4.b8;
import p4.c8;
import p4.p7;
import p4.q7;
import p4.v9;
import p4.y9;
import x7.a;
import x7.b;
import x7.c;
import z7.e;

/* loaded from: classes2.dex */
public class BarcodeScannerImpl extends MobileVisionBase<List<a>> implements b {
    public static final c f = new c();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @VisibleForTesting
    public BarcodeScannerImpl(@NonNull e eVar, @NonNull Executor executor, @NonNull v9 v9Var) {
        super(eVar, executor);
        c cVar = f;
        b8 b8Var = new b8();
        b8Var.f12274b = z7.a.a(cVar);
        c8 c8Var = new c8(b8Var);
        q7 q7Var = new q7();
        q7Var.f12620d = c8Var;
        v9Var.c(new y9(q7Var, 1), p7.ON_DEVICE_BARCODE_CREATE, v9Var.d());
    }
}
