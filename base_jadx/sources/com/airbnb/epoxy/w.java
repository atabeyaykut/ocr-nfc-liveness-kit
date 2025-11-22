package com.airbnb.epoxy;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class w extends kotlin.jvm.internal.j implements x9.a<RecyclerView.RecycledViewPool> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EpoxyRecyclerView f2663a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(EpoxyRecyclerView epoxyRecyclerView) {
        super(0);
        this.f2663a = epoxyRecyclerView;
    }

    @Override // x9.a
    public final RecyclerView.RecycledViewPool invoke() {
        this.f2663a.getClass();
        return new o0();
    }
}
