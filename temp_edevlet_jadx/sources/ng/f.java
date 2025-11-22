package ng;

import androidx.appcompat.widget.AppCompatEditText;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.search.databinding.FragmentSearchBinding;

/* loaded from: classes3.dex */
public final class f extends kotlin.jvm.internal.j implements x9.l<String, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchFragment f10955a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(SearchFragment searchFragment) {
        super(1);
        this.f10955a = searchFragment;
    }

    @Override // x9.l
    public final m invoke(String str) {
        String str2 = str;
        SearchFragment searchFragment = this.f10955a;
        searchFragment.f16719n = true;
        FragmentSearchBinding fragmentSearchBinding = searchFragment.f16713g;
        if (fragmentSearchBinding == null) {
            kotlin.jvm.internal.h.n("mSearchFragmentBinding");
            throw null;
        }
        AppCompatEditText appCompatEditText = fragmentSearchBinding.f.f15877c;
        kotlin.jvm.internal.h.e(appCompatEditText, "mSearchFragmentBinding.searchView.searchText");
        appCompatEditText.setText(str2);
        appCompatEditText.setSelection(str2.length());
        return m.f9594a;
    }
}
