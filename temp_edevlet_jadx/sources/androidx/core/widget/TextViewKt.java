package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;
import x9.r;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a:\u0010\u0007\u001a\u00020\u0006*\u00020\u00002(\b\u0004\u0010\u0005\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001H\u0086\bø\u0001\u0000\u001a:\u0010\b\u001a\u00020\u0006*\u00020\u00002(\b\u0004\u0010\u0005\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001H\u0086\bø\u0001\u0000\u001a(\u0010\u000b\u001a\u00020\u0006*\u00020\u00002\u0016\b\u0004\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00040\tH\u0086\bø\u0001\u0000\u001a|\u0010\u000f\u001a\u00020\u0006*\u00020\u00002(\b\u0006\u0010\f\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012(\b\u0006\u0010\r\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u0016\b\u0006\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00040\tH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"Landroid/widget/TextView;", "Lkotlin/Function4;", "", "", "Ll9/m;", "action", "Landroid/text/TextWatcher;", "doBeforeTextChanged", "doOnTextChanged", "Lkotlin/Function1;", "Landroid/text/Editable;", "doAfterTextChanged", "beforeTextChanged", "onTextChanged", "afterTextChanged", "addTextChangedListener", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class TextViewKt {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\t\u001a\u00020\u00062\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "<anonymous parameter 2>", "<anonymous parameter 3>", "Ll9/m;", "invoke", "(Ljava/lang/CharSequence;III)V", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* renamed from: androidx.core.widget.TextViewKt$addTextChangedListener$1, reason: invalid class name */
    public static final class AnonymousClass1 extends j implements r<CharSequence, Integer, Integer, Integer, m> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(4);
        }

        @Override // x9.r
        public /* bridge */ /* synthetic */ m invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
            invoke(charSequence, num.intValue(), num2.intValue(), num3.intValue());
            return m.f9594a;
        }

        public final void invoke(CharSequence charSequence, int r22, int r32, int r42) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\t\u001a\u00020\u00062\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "<anonymous parameter 2>", "<anonymous parameter 3>", "Ll9/m;", "invoke", "(Ljava/lang/CharSequence;III)V", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* renamed from: androidx.core.widget.TextViewKt$addTextChangedListener$2, reason: invalid class name */
    public static final class AnonymousClass2 extends j implements r<CharSequence, Integer, Integer, Integer, m> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(4);
        }

        @Override // x9.r
        public /* bridge */ /* synthetic */ m invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
            invoke(charSequence, num.intValue(), num2.intValue(), num3.intValue());
            return m.f9594a;
        }

        public final void invoke(CharSequence charSequence, int r22, int r32, int r42) {
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/text/Editable;", "it", "Ll9/m;", "invoke", "(Landroid/text/Editable;)V", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* renamed from: androidx.core.widget.TextViewKt$addTextChangedListener$3, reason: invalid class name */
    public static final class AnonymousClass3 extends j implements l<Editable, m> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(1);
        }

        @Override // x9.l
        public /* bridge */ /* synthetic */ m invoke(Editable editable) {
            invoke2(editable);
            return m.f9594a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Editable editable) {
        }
    }

    public static final TextWatcher addTextChangedListener(TextView textView, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, m> beforeTextChanged, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, m> onTextChanged, l<? super Editable, m> afterTextChanged) {
        h.f(textView, "<this>");
        h.f(beforeTextChanged, "beforeTextChanged");
        h.f(onTextChanged, "onTextChanged");
        h.f(afterTextChanged, "afterTextChanged");
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(afterTextChanged, beforeTextChanged, onTextChanged);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static /* synthetic */ TextWatcher addTextChangedListener$default(TextView textView, r beforeTextChanged, r onTextChanged, l afterTextChanged, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            beforeTextChanged = AnonymousClass1.INSTANCE;
        }
        if ((r42 & 2) != 0) {
            onTextChanged = AnonymousClass2.INSTANCE;
        }
        if ((r42 & 4) != 0) {
            afterTextChanged = AnonymousClass3.INSTANCE;
        }
        h.f(textView, "<this>");
        h.f(beforeTextChanged, "beforeTextChanged");
        h.f(onTextChanged, "onTextChanged");
        h.f(afterTextChanged, "afterTextChanged");
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(afterTextChanged, beforeTextChanged, onTextChanged);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static final TextWatcher doAfterTextChanged(TextView textView, final l<? super Editable, m> action) {
        h.f(textView, "<this>");
        h.f(action, "action");
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                action.invoke(editable);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doBeforeTextChanged(TextView textView, final r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, m> action) {
        h.f(textView, "<this>");
        h.f(action, "action");
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doBeforeTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int r32, int r42, int r52) {
                action.invoke(charSequence, Integer.valueOf(r32), Integer.valueOf(r42), Integer.valueOf(r52));
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doOnTextChanged(TextView textView, final r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, m> action) {
        h.f(textView, "<this>");
        h.f(action, "action");
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int r22, int r32, int r42) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int r32, int r42, int r52) {
                action.invoke(charSequence, Integer.valueOf(r32), Integer.valueOf(r42), Integer.valueOf(r52));
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }
}
