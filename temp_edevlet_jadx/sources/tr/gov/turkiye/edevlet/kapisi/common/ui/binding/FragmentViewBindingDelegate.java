package tr.gov.turkiye.edevlet.kapisi.common.ui.binding;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.lifecycle.b;
import androidx.viewbinding.ViewBinding;
import da.m;
import fe.a;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import x9.l;

/* loaded from: classes3.dex */
public final class FragmentViewBindingDelegate<T extends ViewBinding> {

    /* renamed from: a, reason: collision with root package name */
    public final Fragment f15850a;

    /* renamed from: b, reason: collision with root package name */
    public final l<View, T> f15851b;

    /* renamed from: c, reason: collision with root package name */
    public T f15852c;

    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewBindingDelegate(Fragment fragment, l<? super View, ? extends T> viewBindingFactory) {
        h.f(fragment, "fragment");
        h.f(viewBindingFactory, "viewBindingFactory");
        this.f15850a = fragment;
        this.f15851b = viewBindingFactory;
        fragment.getLifecycle().addObserver(new DefaultLifecycleObserver(this) { // from class: tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate.1

            /* renamed from: a, reason: collision with root package name */
            public final a f15853a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FragmentViewBindingDelegate<T> f15854b;

            /* JADX WARN: Type inference failed for: r0v0, types: [fe.a] */
            {
                this.f15854b = this;
                this.f15853a = new Observer() { // from class: fe.a
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        LifecycleOwner lifecycleOwner = (LifecycleOwner) obj;
                        final FragmentViewBindingDelegate this$0 = this;
                        h.f(this$0, "this$0");
                        if (lifecycleOwner == null) {
                            return;
                        }
                        lifecycleOwner.getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate$1$viewLifecycleOwnerLiveDataObserver$1$1
                            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                            public final /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner2) {
                                b.a(this, lifecycleOwner2);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                            public final void onDestroy(LifecycleOwner owner) {
                                h.f(owner, "owner");
                                this$0.f15852c = null;
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                            public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner2) {
                                b.c(this, lifecycleOwner2);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                            public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner2) {
                                b.d(this, lifecycleOwner2);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                            public final /* synthetic */ void onStart(LifecycleOwner lifecycleOwner2) {
                                b.e(this, lifecycleOwner2);
                            }

                            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
                            public final /* synthetic */ void onStop(LifecycleOwner lifecycleOwner2) {
                                b.f(this, lifecycleOwner2);
                            }
                        });
                    }
                };
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public final void onCreate(LifecycleOwner owner) {
                h.f(owner, "owner");
                this.f15854b.f15850a.getViewLifecycleOwnerLiveData().observeForever(this.f15853a);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public final void onDestroy(LifecycleOwner owner) {
                h.f(owner, "owner");
                this.f15854b.f15850a.getViewLifecycleOwnerLiveData().removeObserver(this.f15853a);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public final /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
                b.c(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public final /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
                b.d(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public final /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
                b.e(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public final /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
                b.f(this, lifecycleOwner);
            }
        });
    }

    public final T a(Fragment thisRef, m<?> property) {
        h.f(thisRef, "thisRef");
        h.f(property, "property");
        T t10 = this.f15852c;
        if (t10 != null) {
            return t10;
        }
        Lifecycle lifecycle = this.f15850a.getViewLifecycleOwner().getLifecycle();
        h.e(lifecycle, "fragment.viewLifecycleOwner.lifecycle");
        if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.INITIALIZED)) {
            throw new IllegalStateException("Should not attempt to get bindings when Fragment views are destroyed.");
        }
        View viewRequireView = thisRef.requireView();
        h.e(viewRequireView, "thisRef.requireView()");
        T tInvoke = this.f15851b.invoke(viewRequireView);
        this.f15852c = tInvoke;
        return tInvoke;
    }
}
