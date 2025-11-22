package b2;

import androidx.recyclerview.widget.DiffUtil;
import x9.p;

/* loaded from: classes.dex */
public final class b<T> extends DiffUtil.ItemCallback<T> {

    /* renamed from: a, reason: collision with root package name */
    public final p<T, T, Boolean> f1090a;

    /* renamed from: b, reason: collision with root package name */
    public final p<T, T, Boolean> f1091b;

    public b(int r22) {
        a aVar = new a();
        a aVar2 = new a();
        this.f1090a = aVar;
        this.f1091b = aVar2;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public final boolean areContentsTheSame(T t10, T t11) {
        return this.f1091b.mo7invoke(t10, t11).booleanValue();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public final boolean areItemsTheSame(T t10, T t11) {
        return this.f1090a.mo7invoke(t10, t11).booleanValue();
    }
}
