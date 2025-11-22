package com.google.mlkit.vision.text.internal;

import androidx.annotation.NonNull;
import c8.a;
import c8.c;
import com.google.android.gms.internal.measurement.x;
import com.google.mlkit.vision.common.internal.MobileVisionBase;
import d8.h;
import java.util.concurrent.Executor;
import s4.a7;
import s4.a9;
import s4.h8;
import s4.x8;
import s4.z6;

/* loaded from: classes2.dex */
public class TextRecognizerImpl extends MobileVisionBase<a> implements c {
    public TextRecognizerImpl(@NonNull h hVar, @NonNull Executor executor, @NonNull x8 x8Var, boolean z10) {
        super(hVar, executor);
        a7 a7Var = new a7();
        a7Var.f14892c = Boolean.valueOf(z10);
        a7Var.f14893d = new h8(new x(2));
        x8Var.b(new a9(a7Var, 1), z6.ON_DEVICE_TEXT_CREATE, x8Var.c());
    }
}
