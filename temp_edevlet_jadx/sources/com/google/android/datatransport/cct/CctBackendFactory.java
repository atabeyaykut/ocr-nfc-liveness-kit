package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import s2.b;
import v2.d;
import v2.h;
import v2.m;

@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements d {
    @Override // v2.d
    public m create(h hVar) {
        return new b(hVar.a(), hVar.d(), hVar.c());
    }
}
