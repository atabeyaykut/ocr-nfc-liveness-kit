package androidx.lifecycle;

import androidx.annotation.CheckResult;
import androidx.arch.core.util.Function;
import kotlin.Metadata;
import x9.l;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0087\b\u001a>\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0014\b\u0004\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0006H\u0087\bø\u0001\u0000\u001aF\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u001c\b\u0004\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u00010\u0006H\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\b"}, d2 = {"distinctUntilChanged", "Landroidx/lifecycle/LiveData;", "X", "map", "Y", "transform", "Lkotlin/Function1;", "switchMap", "lifecycle-livedata-ktx_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TransformationsKt {
    @CheckResult
    public static final <X> LiveData<X> distinctUntilChanged(LiveData<X> liveData) {
        kotlin.jvm.internal.h.f(liveData, "<this>");
        LiveData<X> liveDataDistinctUntilChanged = Transformations.distinctUntilChanged(liveData);
        kotlin.jvm.internal.h.e(liveDataDistinctUntilChanged, "distinctUntilChanged(this)");
        return liveDataDistinctUntilChanged;
    }

    @CheckResult
    public static final <X, Y> LiveData<Y> map(LiveData<X> liveData, final l<? super X, ? extends Y> transform) {
        kotlin.jvm.internal.h.f(liveData, "<this>");
        kotlin.jvm.internal.h.f(transform, "transform");
        LiveData<Y> map = Transformations.map(liveData, new Function() { // from class: androidx.lifecycle.TransformationsKt.map.1
            /* JADX WARN: Type inference failed for: r2v1, types: [Y, java.lang.Object] */
            @Override // androidx.arch.core.util.Function
            public final Y apply(X x10) {
                return transform.invoke(x10);
            }
        });
        kotlin.jvm.internal.h.e(map, "crossinline transform: (…p(this) { transform(it) }");
        return map;
    }

    @CheckResult
    public static final <X, Y> LiveData<Y> switchMap(LiveData<X> liveData, final l<? super X, ? extends LiveData<Y>> transform) {
        kotlin.jvm.internal.h.f(liveData, "<this>");
        kotlin.jvm.internal.h.f(transform, "transform");
        LiveData<Y> liveDataSwitchMap = Transformations.switchMap(liveData, new Function() { // from class: androidx.lifecycle.TransformationsKt.switchMap.1
            @Override // androidx.arch.core.util.Function
            public final LiveData<Y> apply(X x10) {
                return (LiveData) transform.invoke(x10);
            }

            @Override // androidx.arch.core.util.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((C03481<I, O>) obj);
            }
        });
        kotlin.jvm.internal.h.e(liveDataSwitchMap, "crossinline transform: (…p(this) { transform(it) }");
        return liveDataSwitchMap;
    }
}
