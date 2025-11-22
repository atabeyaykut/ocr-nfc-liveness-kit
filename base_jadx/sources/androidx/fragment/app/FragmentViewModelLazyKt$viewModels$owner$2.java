package androidx.fragment.app;

import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStoreOwner;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
/* loaded from: classes.dex */
public final class FragmentViewModelLazyKt$viewModels$owner$2 extends kotlin.jvm.internal.j implements x9.a<ViewModelStoreOwner> {
    final /* synthetic */ x9.a<ViewModelStoreOwner> $ownerProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewModelLazyKt$viewModels$owner$2(x9.a<? extends ViewModelStoreOwner> aVar) {
        super(0);
        this.$ownerProducer = aVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // x9.a
    public final ViewModelStoreOwner invoke() {
        return this.$ownerProducer.invoke();
    }
}
