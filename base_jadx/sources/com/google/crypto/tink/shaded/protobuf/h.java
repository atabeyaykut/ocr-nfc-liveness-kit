package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.i;

/* loaded from: classes2.dex */
public final class h extends i.a {

    /* renamed from: a, reason: collision with root package name */
    public int f4266a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f4267b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f4268c;

    public h(i iVar) {
        this.f4268c = iVar;
        this.f4267b = iVar.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4266a < this.f4267b;
    }
}
