package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import c5.y;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import x9.a;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a;\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00032\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0087\b¨\u0006\n"}, d2 = {"Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/fragment/app/Fragment;", "", "navGraphId", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "factoryProducer", "Ll9/e;", "navGraphViewModels", "navigation-fragment-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavGraphViewModelLazyKt {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$1, reason: invalid class name */
    public static final class AnonymousClass1 extends j implements a<ViewModelProvider.Factory> {
        final /* synthetic */ e $backStackEntry;
        final /* synthetic */ m $backStackEntry$metadata;
        final /* synthetic */ a $factoryProducer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(a aVar, e eVar, m mVar) {
            super(0);
            this.$factoryProducer = aVar;
            this.$backStackEntry = eVar;
            this.$backStackEntry$metadata = mVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelProvider.Factory invoke() {
            ViewModelProvider.Factory factory;
            a aVar = this.$factoryProducer;
            if (aVar != null && (factory = (ViewModelProvider.Factory) aVar.invoke()) != null) {
                return factory;
            }
            NavBackStackEntry backStackEntry = (NavBackStackEntry) this.$backStackEntry.getValue();
            h.b(backStackEntry, "backStackEntry");
            ViewModelProvider.Factory defaultViewModelProviderFactory = backStackEntry.getDefaultViewModelProviderFactory();
            h.b(defaultViewModelProviderFactory, "backStackEntry.defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    }

    @MainThread
    public static final <VM extends ViewModel> e<VM> navGraphViewModels(Fragment navGraphViewModels, @IdRes int r12, a<? extends ViewModelProvider.Factory> aVar) {
        h.g(navGraphViewModels, "$this$navGraphViewModels");
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(y.w(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(navGraphViewModels, r12)), null);
        h.m();
        throw null;
    }

    public static e navGraphViewModels$default(Fragment navGraphViewModels, int r12, a aVar, int r32, Object obj) {
        h.g(navGraphViewModels, "$this$navGraphViewModels");
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(y.w(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(navGraphViewModels, r12)), null);
        h.m();
        throw null;
    }
}
