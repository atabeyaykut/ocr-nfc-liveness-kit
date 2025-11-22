package com.afollestad.materialdialogs.internal.button;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.recyclerview.widget.RecyclerView;
import b0.c;
import c5.w;
import com.afollestad.materialdialogs.internal.list.DialogRecyclerView;
import g.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.l;
import m9.k;
import m9.v;
import tr.gov.turkiye.edevlet.kapisi.R;
import v.e;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b!\u0010\"R\"\u0010\t\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000f¨\u0006#"}, d2 = {"Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;", "Lz/a;", "", "k", "Z", "getStackButtons$core", "()Z", "setStackButtons$core", "(Z)V", "stackButtons", "", "Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;", "l", "[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;", "getActionButtons", "()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;", "setActionButtons", "([Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V", "actionButtons", "Landroidx/appcompat/widget/AppCompatCheckBox;", "m", "Landroidx/appcompat/widget/AppCompatCheckBox;", "getCheckBoxPrompt", "()Landroidx/appcompat/widget/AppCompatCheckBox;", "setCheckBoxPrompt", "(Landroidx/appcompat/widget/AppCompatCheckBox;)V", "checkBoxPrompt", "getVisibleButtons", "visibleButtons", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "core"}, k = 1, mv = {1, 4, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class DialogActionButtonLayout extends z.a {

    /* renamed from: e, reason: collision with root package name */
    public final int f2478e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2479g;

    /* renamed from: h, reason: collision with root package name */
    public final int f2480h;

    /* renamed from: j, reason: collision with root package name */
    public final int f2481j;

    /* renamed from: k, reason: collision with root package name and from kotlin metadata */
    public boolean stackButtons;

    /* renamed from: l, reason: collision with root package name and from kotlin metadata */
    public DialogActionButton[] actionButtons;

    /* renamed from: m, reason: collision with root package name and from kotlin metadata */
    public AppCompatCheckBox checkBoxPrompt;

    public static final class a implements View.OnClickListener {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2486b;

        public a(int r22) {
            this.f2486b = r22;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ArrayList arrayList;
            e dialog = DialogActionButtonLayout.this.getDialog();
            dialog.getClass();
            int r02 = this.f2486b;
            androidx.appcompat.graphics.drawable.a.j(r02, "which");
            int r03 = d.c(r02);
            if (r03 != 0) {
                if (r03 == 1) {
                    arrayList = dialog.f18181j;
                } else if (r03 == 2) {
                    arrayList = dialog.f18182k;
                }
                w.y(arrayList, dialog);
            } else {
                w.y(dialog.f18180h, dialog);
                DialogRecyclerView recyclerView = dialog.f.getContentLayout().getRecyclerView();
                RecyclerView.Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
                y.a aVar = (y.a) (adapter instanceof y.a ? adapter : null);
                if (aVar != null) {
                    aVar.a();
                }
            }
            if (dialog.f18175b) {
                dialog.dismiss();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogActionButtonLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.g(context, "context");
        this.f2478e = c.a(this, R.dimen.md_action_button_frame_padding) - c.a(this, R.dimen.md_action_button_inset_horizontal);
        this.f = c.a(this, R.dimen.md_action_button_frame_padding_neutral);
        this.f2479g = c.a(this, R.dimen.md_action_button_frame_spec_height);
        this.f2480h = c.a(this, R.dimen.md_checkbox_prompt_margin_vertical);
        this.f2481j = c.a(this, R.dimen.md_checkbox_prompt_margin_horizontal);
    }

    public final DialogActionButton[] getActionButtons() {
        DialogActionButton[] dialogActionButtonArr = this.actionButtons;
        if (dialogActionButtonArr != null) {
            return dialogActionButtonArr;
        }
        h.n("actionButtons");
        throw null;
    }

    public final AppCompatCheckBox getCheckBoxPrompt() {
        AppCompatCheckBox appCompatCheckBox = this.checkBoxPrompt;
        if (appCompatCheckBox != null) {
            return appCompatCheckBox;
        }
        h.n("checkBoxPrompt");
        throw null;
    }

    /* renamed from: getStackButtons$core, reason: from getter */
    public final boolean getStackButtons() {
        return this.stackButtons;
    }

    public final DialogActionButton[] getVisibleButtons() {
        DialogActionButton[] dialogActionButtonArr = this.actionButtons;
        if (dialogActionButtonArr == null) {
            h.n("actionButtons");
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        for (DialogActionButton dialogActionButton : dialogActionButtonArr) {
            if (b0.d.c(dialogActionButton)) {
                arrayList.add(dialogActionButton);
            }
        }
        Object[] array = arrayList.toArray(new DialogActionButton[0]);
        if (array != null) {
            return (DialogActionButton[]) array;
        }
        throw new l("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        h.g(canvas, "canvas");
        super.onDraw(canvas);
        if (getDrawDivider()) {
            canvas.drawLine(0.0f, 0.0f, getMeasuredWidth(), getDividerHeight(), a());
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        int r72;
        super.onFinishInflate();
        View viewFindViewById = findViewById(R.id.md_button_positive);
        h.b(viewFindViewById, "findViewById(R.id.md_button_positive)");
        View viewFindViewById2 = findViewById(R.id.md_button_negative);
        h.b(viewFindViewById2, "findViewById(R.id.md_button_negative)");
        View viewFindViewById3 = findViewById(R.id.md_button_neutral);
        h.b(viewFindViewById3, "findViewById(R.id.md_button_neutral)");
        this.actionButtons = new DialogActionButton[]{(DialogActionButton) viewFindViewById, (DialogActionButton) viewFindViewById2, (DialogActionButton) viewFindViewById3};
        View viewFindViewById4 = findViewById(R.id.md_checkbox_prompt);
        h.b(viewFindViewById4, "findViewById(R.id.md_checkbox_prompt)");
        this.checkBoxPrompt = (AppCompatCheckBox) viewFindViewById4;
        DialogActionButton[] dialogActionButtonArr = this.actionButtons;
        if (dialogActionButtonArr == null) {
            h.n("actionButtons");
            throw null;
        }
        int length = dialogActionButtonArr.length;
        for (int r32 = 0; r32 < length; r32++) {
            DialogActionButton dialogActionButton = dialogActionButtonArr[r32];
            if (r32 == 0) {
                r72 = 1;
            } else if (r32 == 1) {
                r72 = 2;
            } else {
                if (r32 != 2) {
                    throw new IndexOutOfBoundsException(r32 + " is not an action button index.");
                }
                r72 = 3;
            }
            dialogActionButton.setOnClickListener(new a(r72));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int r72, int r82, int r92, int r10) {
        List listB0;
        int measuredWidth;
        AppCompatCheckBox appCompatCheckBox;
        if (x.a.a(this)) {
            AppCompatCheckBox appCompatCheckBox2 = this.checkBoxPrompt;
            if (appCompatCheckBox2 == null) {
                h.n("checkBoxPrompt");
                throw null;
            }
            if (b0.d.c(appCompatCheckBox2)) {
                boolean zB = b0.d.b(this);
                int measuredWidth2 = this.f2481j;
                if (zB) {
                    measuredWidth = getMeasuredWidth() - measuredWidth2;
                    AppCompatCheckBox appCompatCheckBox3 = this.checkBoxPrompt;
                    if (appCompatCheckBox3 == null) {
                        h.n("checkBoxPrompt");
                        throw null;
                    }
                    measuredWidth2 = measuredWidth - appCompatCheckBox3.getMeasuredWidth();
                    appCompatCheckBox = this.checkBoxPrompt;
                    if (appCompatCheckBox == null) {
                        h.n("checkBoxPrompt");
                        throw null;
                    }
                } else {
                    AppCompatCheckBox appCompatCheckBox4 = this.checkBoxPrompt;
                    if (appCompatCheckBox4 == null) {
                        h.n("checkBoxPrompt");
                        throw null;
                    }
                    measuredWidth = appCompatCheckBox4.getMeasuredWidth() + measuredWidth2;
                    appCompatCheckBox = this.checkBoxPrompt;
                    if (appCompatCheckBox == null) {
                        h.n("checkBoxPrompt");
                        throw null;
                    }
                }
                int measuredHeight = appCompatCheckBox.getMeasuredHeight();
                int r02 = this.f2480h;
                int r102 = measuredHeight + r02;
                AppCompatCheckBox appCompatCheckBox5 = this.checkBoxPrompt;
                if (appCompatCheckBox5 == null) {
                    h.n("checkBoxPrompt");
                    throw null;
                }
                appCompatCheckBox5.layout(measuredWidth2, r02, measuredWidth, r102);
            }
            boolean z11 = this.stackButtons;
            int r93 = this.f2479g;
            int r103 = this.f2478e;
            if (z11) {
                int measuredWidth3 = getMeasuredWidth() - r103;
                int measuredHeight2 = getMeasuredHeight();
                DialogActionButton[] visibleButtons = getVisibleButtons();
                h.f(visibleButtons, "<this>");
                if (visibleButtons.length == 0) {
                    listB0 = v.f10173a;
                } else {
                    listB0 = k.B0(visibleButtons);
                    Collections.reverse(listB0);
                }
                Iterator it = listB0.iterator();
                while (it.hasNext()) {
                    int r12 = measuredHeight2 - r93;
                    ((DialogActionButton) it.next()).layout(r103, r12, measuredWidth3, measuredHeight2);
                    measuredHeight2 = r12;
                }
                return;
            }
            int measuredHeight3 = getMeasuredHeight() - r93;
            int measuredHeight4 = getMeasuredHeight();
            boolean zB2 = b0.d.b(this);
            int r22 = this.f;
            if (zB2) {
                DialogActionButton[] dialogActionButtonArr = this.actionButtons;
                if (dialogActionButtonArr == null) {
                    h.n("actionButtons");
                    throw null;
                }
                if (b0.d.c(dialogActionButtonArr[2])) {
                    DialogActionButton[] dialogActionButtonArr2 = this.actionButtons;
                    if (dialogActionButtonArr2 == null) {
                        h.n("actionButtons");
                        throw null;
                    }
                    DialogActionButton dialogActionButton = dialogActionButtonArr2[2];
                    int measuredWidth4 = getMeasuredWidth() - r22;
                    dialogActionButton.layout(measuredWidth4 - dialogActionButton.getMeasuredWidth(), measuredHeight3, measuredWidth4, measuredHeight4);
                }
                DialogActionButton[] dialogActionButtonArr3 = this.actionButtons;
                if (dialogActionButtonArr3 == null) {
                    h.n("actionButtons");
                    throw null;
                }
                if (b0.d.c(dialogActionButtonArr3[0])) {
                    DialogActionButton[] dialogActionButtonArr4 = this.actionButtons;
                    if (dialogActionButtonArr4 == null) {
                        h.n("actionButtons");
                        throw null;
                    }
                    DialogActionButton dialogActionButton2 = dialogActionButtonArr4[0];
                    int measuredWidth5 = dialogActionButton2.getMeasuredWidth() + r103;
                    dialogActionButton2.layout(r103, measuredHeight3, measuredWidth5, measuredHeight4);
                    r103 = measuredWidth5;
                }
                DialogActionButton[] dialogActionButtonArr5 = this.actionButtons;
                if (dialogActionButtonArr5 == null) {
                    h.n("actionButtons");
                    throw null;
                }
                if (b0.d.c(dialogActionButtonArr5[1])) {
                    DialogActionButton[] dialogActionButtonArr6 = this.actionButtons;
                    if (dialogActionButtonArr6 == null) {
                        h.n("actionButtons");
                        throw null;
                    }
                    DialogActionButton dialogActionButton3 = dialogActionButtonArr6[1];
                    dialogActionButton3.layout(r103, measuredHeight3, dialogActionButton3.getMeasuredWidth() + r103, measuredHeight4);
                    return;
                }
                return;
            }
            DialogActionButton[] dialogActionButtonArr7 = this.actionButtons;
            if (dialogActionButtonArr7 == null) {
                h.n("actionButtons");
                throw null;
            }
            if (b0.d.c(dialogActionButtonArr7[2])) {
                DialogActionButton[] dialogActionButtonArr8 = this.actionButtons;
                if (dialogActionButtonArr8 == null) {
                    h.n("actionButtons");
                    throw null;
                }
                DialogActionButton dialogActionButton4 = dialogActionButtonArr8[2];
                dialogActionButton4.layout(r22, measuredHeight3, dialogActionButton4.getMeasuredWidth() + r22, measuredHeight4);
            }
            int measuredWidth6 = getMeasuredWidth() - r103;
            DialogActionButton[] dialogActionButtonArr9 = this.actionButtons;
            if (dialogActionButtonArr9 == null) {
                h.n("actionButtons");
                throw null;
            }
            if (b0.d.c(dialogActionButtonArr9[0])) {
                DialogActionButton[] dialogActionButtonArr10 = this.actionButtons;
                if (dialogActionButtonArr10 == null) {
                    h.n("actionButtons");
                    throw null;
                }
                DialogActionButton dialogActionButton5 = dialogActionButtonArr10[0];
                int measuredWidth7 = measuredWidth6 - dialogActionButton5.getMeasuredWidth();
                dialogActionButton5.layout(measuredWidth7, measuredHeight3, measuredWidth6, measuredHeight4);
                measuredWidth6 = measuredWidth7;
            }
            DialogActionButton[] dialogActionButtonArr11 = this.actionButtons;
            if (dialogActionButtonArr11 == null) {
                h.n("actionButtons");
                throw null;
            }
            if (b0.d.c(dialogActionButtonArr11[1])) {
                DialogActionButton[] dialogActionButtonArr12 = this.actionButtons;
                if (dialogActionButtonArr12 == null) {
                    h.n("actionButtons");
                    throw null;
                }
                DialogActionButton dialogActionButton6 = dialogActionButtonArr12[1];
                dialogActionButton6.layout(measuredWidth6 - dialogActionButton6.getMeasuredWidth(), measuredHeight3, measuredWidth6, measuredHeight4);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int r14, int r15) {
        int r72;
        if (!x.a.a(this)) {
            setMeasuredDimension(0, 0);
            return;
        }
        int size = View.MeasureSpec.getSize(r14);
        AppCompatCheckBox appCompatCheckBox = this.checkBoxPrompt;
        if (appCompatCheckBox == null) {
            h.n("checkBoxPrompt");
            throw null;
        }
        if (b0.d.c(appCompatCheckBox)) {
            int r152 = size - (this.f2481j * 2);
            AppCompatCheckBox appCompatCheckBox2 = this.checkBoxPrompt;
            if (appCompatCheckBox2 == null) {
                h.n("checkBoxPrompt");
                throw null;
            }
            appCompatCheckBox2.measure(View.MeasureSpec.makeMeasureSpec(r152, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        Context context = getDialog().getContext();
        h.b(context, "dialog.context");
        Context context2 = getDialog().f18183l;
        DialogActionButton[] visibleButtons = getVisibleButtons();
        int length = visibleButtons.length;
        int r6 = 0;
        while (true) {
            r72 = this.f2479g;
            if (r6 >= length) {
                break;
            }
            DialogActionButton dialogActionButton = visibleButtons[r6];
            dialogActionButton.a(context, context2, this.stackButtons);
            dialogActionButton.measure(this.stackButtons ? View.MeasureSpec.makeMeasureSpec(size, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(r72, 1073741824));
            r6++;
        }
        if ((!(getVisibleButtons().length == 0)) && !this.stackButtons) {
            int measuredWidth = 0;
            for (DialogActionButton dialogActionButton2 : getVisibleButtons()) {
                measuredWidth += dialogActionButton2.getMeasuredWidth();
            }
            if (measuredWidth >= size && !this.stackButtons) {
                this.stackButtons = true;
                for (DialogActionButton dialogActionButton3 : getVisibleButtons()) {
                    dialogActionButton3.a(context, context2, true);
                    dialogActionButton3.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(r72, 1073741824));
                }
            }
        }
        int length2 = getVisibleButtons().length == 0 ? 0 : this.stackButtons ? r72 * getVisibleButtons().length : r72;
        AppCompatCheckBox appCompatCheckBox3 = this.checkBoxPrompt;
        if (appCompatCheckBox3 == null) {
            h.n("checkBoxPrompt");
            throw null;
        }
        if (b0.d.c(appCompatCheckBox3)) {
            AppCompatCheckBox appCompatCheckBox4 = this.checkBoxPrompt;
            if (appCompatCheckBox4 == null) {
                h.n("checkBoxPrompt");
                throw null;
            }
            length2 = androidx.camera.core.impl.a.d(this.f2480h, 2, appCompatCheckBox4.getMeasuredHeight(), length2);
        }
        setMeasuredDimension(size, length2);
    }

    public final void setActionButtons(DialogActionButton[] dialogActionButtonArr) {
        h.g(dialogActionButtonArr, "<set-?>");
        this.actionButtons = dialogActionButtonArr;
    }

    public final void setCheckBoxPrompt(AppCompatCheckBox appCompatCheckBox) {
        h.g(appCompatCheckBox, "<set-?>");
        this.checkBoxPrompt = appCompatCheckBox;
    }

    public final void setStackButtons$core(boolean z10) {
        this.stackButtons = z10;
    }
}
