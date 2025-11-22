package ng;

import android.text.Editable;
import android.text.TextWatcher;
import da.m;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;

/* loaded from: classes3.dex */
public final class e implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchFragment f10954a;

    public e(SearchFragment searchFragment) {
        this.f10954a = searchFragment;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String strValueOf = String.valueOf(editable);
        m<Object>[] mVarArr = SearchFragment.f16707s;
        this.f10954a.F(strValueOf);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
    }
}
