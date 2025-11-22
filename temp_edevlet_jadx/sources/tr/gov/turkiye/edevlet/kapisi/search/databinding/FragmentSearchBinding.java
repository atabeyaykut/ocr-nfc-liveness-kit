package tr.gov.turkiye.edevlet.kapisi.search.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSearchBarBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentSearchBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16735a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ItemSearchDeleteHistoryBinding f16736b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16737c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16738d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16739e;

    @NonNull
    public final IncludeSearchBarBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16740g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16741h;

    public FragmentSearchBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ItemSearchDeleteHistoryBinding itemSearchDeleteHistoryBinding, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSearchBarBinding includeSearchBarBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull AppCompatTextView appCompatTextView) {
        this.f16735a = constraintLayout;
        this.f16736b = itemSearchDeleteHistoryBinding;
        this.f16737c = includeNoConnectionBinding;
        this.f16738d = progressBar;
        this.f16739e = epoxyRecyclerView;
        this.f = includeSearchBarBinding;
        this.f16740g = includeSystemErrorBinding;
        this.f16741h = appCompatTextView;
    }

    @NonNull
    public static FragmentSearchBinding bind(@NonNull View view) {
        int r02 = R.id.delete_history_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.delete_history_layout);
        if (viewFindChildViewById != null) {
            ItemSearchDeleteHistoryBinding itemSearchDeleteHistoryBindingBind = ItemSearchDeleteHistoryBinding.bind(viewFindChildViewById);
            r02 = R.id.no_connection_view;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.no_connection_view);
            if (viewFindChildViewById2 != null) {
                IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById2);
                r02 = R.id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                if (progressBar != null) {
                    r02 = R.id.rcl_services_list;
                    EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_services_list);
                    if (epoxyRecyclerView != null) {
                        r02 = R.id.searchView;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.searchView);
                        if (viewFindChildViewById3 != null) {
                            IncludeSearchBarBinding includeSearchBarBindingBind = IncludeSearchBarBinding.bind(viewFindChildViewById3);
                            r02 = R.id.system_error_view;
                            View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                            if (viewFindChildViewById4 != null) {
                                IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById4);
                                r02 = R.id.txt_no_result;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_no_result);
                                if (appCompatTextView != null) {
                                    return new FragmentSearchBinding((ConstraintLayout) view, itemSearchDeleteHistoryBindingBind, includeNoConnectionBindingBind, progressBar, epoxyRecyclerView, includeSearchBarBindingBind, includeSystemErrorBindingBind, appCompatTextView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_search, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16735a;
    }
}
