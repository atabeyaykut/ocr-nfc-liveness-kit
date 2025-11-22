package androidx.fragment.app;

import androidx.annotation.MainThread;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import c5.y;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aD\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u000e\b\n\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0087\bø\u0001\u0000\u001aV\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u000e\b\n\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\b\n\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0087\bø\u0001\u0000\u001a4\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0087\bø\u0001\u0000\u001aF\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0010\b\n\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0087\bø\u0001\u0000\u001aJ\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0007\u001aZ\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0013²\u0006\u0018\u0010\u0012\u001a\u00020\u0004\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0018\u0010\u0012\u001a\u00020\u0004\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/fragment/app/Fragment;", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelStoreOwner;", "ownerProducer", "Landroidx/lifecycle/ViewModelProvider$Factory;", "factoryProducer", "Ll9/e;", "viewModels", "Landroidx/lifecycle/viewmodel/CreationExtras;", "extrasProducer", "activityViewModels", "Lda/d;", "viewModelClass", "Landroidx/lifecycle/ViewModelStore;", "storeProducer", "createViewModelLazy", "owner", "fragment-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class FragmentViewModelLazyKt {

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$1, reason: invalid class name */
    public static final class AnonymousClass1 extends kotlin.jvm.internal.j implements x9.a<ViewModelStore> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = this.$this_activityViewModels.requireActivity().getViewModelStore();
            kotlin.jvm.internal.h.e(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$2, reason: invalid class name */
    public static final class AnonymousClass2 extends kotlin.jvm.internal.j implements x9.a<CreationExtras> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final CreationExtras invoke() {
            CreationExtras defaultViewModelCreationExtras = this.$this_activityViewModels.requireActivity().getDefaultViewModelCreationExtras();
            kotlin.jvm.internal.h.e(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
            return defaultViewModelCreationExtras;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$3, reason: invalid class name */
    public static final class AnonymousClass3 extends kotlin.jvm.internal.j implements x9.a<ViewModelProvider.Factory> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelProvider.Factory invoke() {
            ViewModelProvider.Factory defaultViewModelProviderFactory = this.$this_activityViewModels.requireActivity().getDefaultViewModelProviderFactory();
            kotlin.jvm.internal.h.e(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$4, reason: invalid class name */
    public static final class AnonymousClass4 extends kotlin.jvm.internal.j implements x9.a<ViewModelStore> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = this.$this_activityViewModels.requireActivity().getViewModelStore();
            kotlin.jvm.internal.h.e(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$5, reason: invalid class name */
    public static final class AnonymousClass5 extends kotlin.jvm.internal.j implements x9.a<CreationExtras> {
        final /* synthetic */ x9.a<CreationExtras> $extrasProducer;
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass5(x9.a<? extends CreationExtras> aVar, Fragment fragment) {
            super(0);
            this.$extrasProducer = aVar;
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            x9.a<CreationExtras> aVar = this.$extrasProducer;
            if (aVar != null && (creationExtrasInvoke = aVar.invoke()) != null) {
                return creationExtrasInvoke;
            }
            CreationExtras defaultViewModelCreationExtras = this.$this_activityViewModels.requireActivity().getDefaultViewModelCreationExtras();
            kotlin.jvm.internal.h.e(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
            return defaultViewModelCreationExtras;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$6, reason: invalid class name */
    public static final class AnonymousClass6 extends kotlin.jvm.internal.j implements x9.a<ViewModelProvider.Factory> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelProvider.Factory invoke() {
            ViewModelProvider.Factory defaultViewModelProviderFactory = this.$this_activityViewModels.requireActivity().getDefaultViewModelProviderFactory();
            kotlin.jvm.internal.h.e(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$createViewModelLazy$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03351 extends kotlin.jvm.internal.j implements x9.a<CreationExtras> {
        final /* synthetic */ Fragment $this_createViewModelLazy;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03351(Fragment fragment) {
            super(0);
            this.$this_createViewModelLazy = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final CreationExtras invoke() {
            CreationExtras defaultViewModelCreationExtras = this.$this_createViewModelLazy.getDefaultViewModelCreationExtras();
            kotlin.jvm.internal.h.e(defaultViewModelCreationExtras, "defaultViewModelCreationExtras");
            return defaultViewModelCreationExtras;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$createViewModelLazy$2, reason: invalid class name and case insensitive filesystem */
    public static final class C03362 extends kotlin.jvm.internal.j implements x9.a<CreationExtras> {
        final /* synthetic */ Fragment $this_createViewModelLazy;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03362(Fragment fragment) {
            super(0);
            this.$this_createViewModelLazy = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final CreationExtras invoke() {
            CreationExtras defaultViewModelCreationExtras = this.$this_createViewModelLazy.getDefaultViewModelCreationExtras();
            kotlin.jvm.internal.h.e(defaultViewModelCreationExtras, "defaultViewModelCreationExtras");
            return defaultViewModelCreationExtras;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/fragment/app/Fragment;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03371 extends kotlin.jvm.internal.j implements x9.a<Fragment> {
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03371(Fragment fragment) {
            super(0);
            this.$this_viewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final Fragment invoke() {
            return this.$this_viewModels;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$2, reason: invalid class name and case insensitive filesystem */
    public static final class C03382 extends kotlin.jvm.internal.j implements x9.a<ViewModelStore> {
        final /* synthetic */ l9.e<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03382(l9.e<? extends ViewModelStoreOwner> eVar) {
            super(0);
            this.$owner$delegate = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = FragmentViewModelLazyKt.m18viewModels$lambda0(this.$owner$delegate).getViewModelStore();
            kotlin.jvm.internal.h.e(viewModelStore, "owner.viewModelStore");
            return viewModelStore;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$3, reason: invalid class name and case insensitive filesystem */
    public static final class C03393 extends kotlin.jvm.internal.j implements x9.a<CreationExtras> {
        final /* synthetic */ l9.e<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03393(l9.e<? extends ViewModelStoreOwner> eVar) {
            super(0);
            this.$owner$delegate = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final CreationExtras invoke() {
            ViewModelStoreOwner viewModelStoreOwnerM18viewModels$lambda0 = FragmentViewModelLazyKt.m18viewModels$lambda0(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM18viewModels$lambda0 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM18viewModels$lambda0 : null;
            CreationExtras defaultViewModelCreationExtras = hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : null;
            return defaultViewModelCreationExtras == null ? CreationExtras.Empty.INSTANCE : defaultViewModelCreationExtras;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$4, reason: invalid class name and case insensitive filesystem */
    public static final class C03404 extends kotlin.jvm.internal.j implements x9.a<ViewModelProvider.Factory> {
        final /* synthetic */ l9.e<ViewModelStoreOwner> $owner$delegate;
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03404(Fragment fragment, l9.e<? extends ViewModelStoreOwner> eVar) {
            super(0);
            this.$this_viewModels = fragment;
            this.$owner$delegate = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelProvider.Factory invoke() {
            ViewModelProvider.Factory defaultViewModelProviderFactory;
            ViewModelStoreOwner viewModelStoreOwnerM18viewModels$lambda0 = FragmentViewModelLazyKt.m18viewModels$lambda0(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM18viewModels$lambda0 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM18viewModels$lambda0 : null;
            if (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
                defaultViewModelProviderFactory = this.$this_viewModels.getDefaultViewModelProviderFactory();
            }
            kotlin.jvm.internal.h.e(defaultViewModelProviderFactory, "(owner as? HasDefaultVie…tViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/fragment/app/Fragment;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$5, reason: invalid class name and case insensitive filesystem */
    public static final class C03415 extends kotlin.jvm.internal.j implements x9.a<Fragment> {
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03415(Fragment fragment) {
            super(0);
            this.$this_viewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final Fragment invoke() {
            return this.$this_viewModels;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$6, reason: invalid class name and case insensitive filesystem */
    public static final class C03426 extends kotlin.jvm.internal.j implements x9.a<ViewModelStore> {
        final /* synthetic */ l9.e<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03426(l9.e<? extends ViewModelStoreOwner> eVar) {
            super(0);
            this.$owner$delegate = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = FragmentViewModelLazyKt.m19viewModels$lambda1(this.$owner$delegate).getViewModelStore();
            kotlin.jvm.internal.h.e(viewModelStore, "owner.viewModelStore");
            return viewModelStore;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$7, reason: invalid class name */
    public static final class AnonymousClass7 extends kotlin.jvm.internal.j implements x9.a<CreationExtras> {
        final /* synthetic */ x9.a<CreationExtras> $extrasProducer;
        final /* synthetic */ l9.e<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(x9.a<? extends CreationExtras> aVar, l9.e<? extends ViewModelStoreOwner> eVar) {
            super(0);
            this.$extrasProducer = aVar;
            this.$owner$delegate = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            x9.a<CreationExtras> aVar = this.$extrasProducer;
            if (aVar != null && (creationExtrasInvoke = aVar.invoke()) != null) {
                return creationExtrasInvoke;
            }
            ViewModelStoreOwner viewModelStoreOwnerM19viewModels$lambda1 = FragmentViewModelLazyKt.m19viewModels$lambda1(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM19viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM19viewModels$lambda1 : null;
            CreationExtras defaultViewModelCreationExtras = hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : null;
            return defaultViewModelCreationExtras == null ? CreationExtras.Empty.INSTANCE : defaultViewModelCreationExtras;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
    /* renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$8, reason: invalid class name */
    public static final class AnonymousClass8 extends kotlin.jvm.internal.j implements x9.a<ViewModelProvider.Factory> {
        final /* synthetic */ l9.e<ViewModelStoreOwner> $owner$delegate;
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass8(Fragment fragment, l9.e<? extends ViewModelStoreOwner> eVar) {
            super(0);
            this.$this_viewModels = fragment;
            this.$owner$delegate = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // x9.a
        public final ViewModelProvider.Factory invoke() {
            ViewModelProvider.Factory defaultViewModelProviderFactory;
            ViewModelStoreOwner viewModelStoreOwnerM19viewModels$lambda1 = FragmentViewModelLazyKt.m19viewModels$lambda1(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM19viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM19viewModels$lambda1 : null;
            if (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
                defaultViewModelProviderFactory = this.$this_viewModels.getDefaultViewModelProviderFactory();
            }
            kotlin.jvm.internal.h.e(defaultViewModelProviderFactory, "(owner as? HasDefaultVie…tViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    }

    @MainThread
    public static final <VM extends ViewModel> l9.e<VM> activityViewModels(Fragment fragment, x9.a<? extends ViewModelProvider.Factory> aVar) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.m();
        throw null;
    }

    public static l9.e activityViewModels$default(Fragment fragment, x9.a aVar, int r22, Object obj) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.m();
        throw null;
    }

    @MainThread
    public static final /* synthetic */ l9.e createViewModelLazy(Fragment fragment, da.d viewModelClass, x9.a storeProducer, x9.a aVar) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(viewModelClass, "viewModelClass");
        kotlin.jvm.internal.h.f(storeProducer, "storeProducer");
        return createViewModelLazy(fragment, viewModelClass, storeProducer, new C03351(fragment), aVar);
    }

    @MainThread
    public static final <VM extends ViewModel> l9.e<VM> createViewModelLazy(Fragment fragment, da.d<VM> viewModelClass, x9.a<? extends ViewModelStore> storeProducer, x9.a<? extends CreationExtras> extrasProducer, x9.a<? extends ViewModelProvider.Factory> aVar) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(viewModelClass, "viewModelClass");
        kotlin.jvm.internal.h.f(storeProducer, "storeProducer");
        kotlin.jvm.internal.h.f(extrasProducer, "extrasProducer");
        if (aVar == null) {
            aVar = new FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1(fragment);
        }
        return new ViewModelLazy(viewModelClass, storeProducer, aVar, extrasProducer);
    }

    public static /* synthetic */ l9.e createViewModelLazy$default(Fragment fragment, da.d dVar, x9.a aVar, x9.a aVar2, int r42, Object obj) {
        if ((r42 & 4) != 0) {
            aVar2 = null;
        }
        return createViewModelLazy(fragment, dVar, aVar, aVar2);
    }

    public static /* synthetic */ l9.e createViewModelLazy$default(Fragment fragment, da.d dVar, x9.a aVar, x9.a aVar2, x9.a aVar3, int r52, Object obj) {
        if ((r52 & 4) != 0) {
            aVar2 = new C03362(fragment);
        }
        if ((r52 & 8) != 0) {
            aVar3 = null;
        }
        return createViewModelLazy(fragment, dVar, aVar, aVar2, aVar3);
    }

    @MainThread
    public static final <VM extends ViewModel> l9.e<VM> viewModels(Fragment fragment, x9.a<? extends ViewModelStoreOwner> ownerProducer, x9.a<? extends ViewModelProvider.Factory> aVar) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(ownerProducer, "ownerProducer");
        y.v(3, new FragmentViewModelLazyKt$viewModels$owner$2(ownerProducer));
        kotlin.jvm.internal.h.m();
        throw null;
    }

    public static l9.e viewModels$default(Fragment fragment, x9.a ownerProducer, x9.a aVar, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            ownerProducer = new C03371(fragment);
        }
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(ownerProducer, "ownerProducer");
        y.v(3, new FragmentViewModelLazyKt$viewModels$owner$2(ownerProducer));
        kotlin.jvm.internal.h.m();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: viewModels$lambda-0, reason: not valid java name */
    public static final ViewModelStoreOwner m18viewModels$lambda0(l9.e<? extends ViewModelStoreOwner> eVar) {
        return eVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: viewModels$lambda-1, reason: not valid java name */
    public static final ViewModelStoreOwner m19viewModels$lambda1(l9.e<? extends ViewModelStoreOwner> eVar) {
        return eVar.getValue();
    }

    @MainThread
    public static final <VM extends ViewModel> l9.e<VM> activityViewModels(Fragment fragment, x9.a<? extends CreationExtras> aVar, x9.a<? extends ViewModelProvider.Factory> aVar2) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.m();
        throw null;
    }

    public static l9.e activityViewModels$default(Fragment fragment, x9.a aVar, x9.a aVar2, int r32, Object obj) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.m();
        throw null;
    }

    @MainThread
    public static final <VM extends ViewModel> l9.e<VM> viewModels(Fragment fragment, x9.a<? extends ViewModelStoreOwner> ownerProducer, x9.a<? extends CreationExtras> aVar, x9.a<? extends ViewModelProvider.Factory> aVar2) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(ownerProducer, "ownerProducer");
        y.v(3, new FragmentViewModelLazyKt$viewModels$owner$4(ownerProducer));
        kotlin.jvm.internal.h.m();
        throw null;
    }

    public static l9.e viewModels$default(Fragment fragment, x9.a ownerProducer, x9.a aVar, x9.a aVar2, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            ownerProducer = new C03415(fragment);
        }
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(ownerProducer, "ownerProducer");
        y.v(3, new FragmentViewModelLazyKt$viewModels$owner$4(ownerProducer));
        kotlin.jvm.internal.h.m();
        throw null;
    }
}
