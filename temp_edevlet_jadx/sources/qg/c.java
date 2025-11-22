package qg;

import android.text.Editable;
import android.text.TextWatcher;

/* loaded from: classes3.dex */
public final class c implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f8.a f13652a;

    public c(f8.a aVar) {
        this.f13652a = aVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f13652a.f.filter(String.valueOf(editable));
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
    }
}
