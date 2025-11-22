package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import kotlin.Metadata;
import l9.m;
import org.bouncycastle.i18n.TextBundle;
import x9.l;
import x9.r;

@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J*\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\u000f"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "Ll9/m;", "afterTextChanged", "", TextBundle.TEXT_ENTRY, "", "start", "count", "after", "beforeTextChanged", "before", "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class TextViewKt$addTextChangedListener$textWatcher$1 implements TextWatcher {
    final /* synthetic */ l<Editable, m> $afterTextChanged;
    final /* synthetic */ r<CharSequence, Integer, Integer, Integer, m> $beforeTextChanged;
    final /* synthetic */ r<CharSequence, Integer, Integer, Integer, m> $onTextChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public TextViewKt$addTextChangedListener$textWatcher$1(l<? super Editable, m> lVar, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, m> rVar, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, m> rVar2) {
        this.$afterTextChanged = lVar;
        this.$beforeTextChanged = rVar;
        this.$onTextChanged = rVar2;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.$afterTextChanged.invoke(editable);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int r32, int r42, int r52) {
        this.$beforeTextChanged.invoke(charSequence, Integer.valueOf(r32), Integer.valueOf(r42), Integer.valueOf(r52));
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int r32, int r42, int r52) {
        this.$onTextChanged.invoke(charSequence, Integer.valueOf(r32), Integer.valueOf(r42), Integer.valueOf(r52));
    }
}
