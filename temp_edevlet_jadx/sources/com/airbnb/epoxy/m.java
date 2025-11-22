package com.airbnb.epoxy;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import java.util.List;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final List<? extends u<?>> f2598a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final List<? extends u<?>> f2599b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final DiffUtil.DiffResult f2600c;

    public m(@NonNull List<? extends u<?>> list, @NonNull List<? extends u<?>> list2, @Nullable DiffUtil.DiffResult diffResult) {
        this.f2598a = list;
        this.f2599b = list2;
        this.f2600c = diffResult;
    }
}
