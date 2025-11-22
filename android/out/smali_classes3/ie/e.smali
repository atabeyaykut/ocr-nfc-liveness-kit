.class public final Lie/e;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lie/e$a;
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Lie/e$a;

.field public b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;


# direct methods
.method public constructor <init>(Lie/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    iput-object p1, p0, Lie/e;->a:Lie/e$a;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lie/e;->a:Lie/e$a;

    invoke-interface {p1}, Lie/e$a;->onDismiss()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, 0x7f0d006d

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;->bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "inflate(\n            inf\u2026ontainer, false\n        )"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lie/e;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;

    .line 24
    .line 25
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    const-string p2, "binding.root"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lie/e;->a:Lie/e$a;

    invoke-interface {p1}, Lie/e$a;->onDismiss()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lie/e;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const-string v0, "binding"

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance v1, Lie/d;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;->c:Lcom/google/android/material/button/MaterialButton;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lie/e;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p2, Lzd/e;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p2, v0, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcWarningDialogBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p2

    .line 44
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p2
.end method
