.class public final Lie/c;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lie/c$a;
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Lie/c$a;

.field public b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcSupportDialogBinding;


# direct methods
.method public constructor <init>(Lie/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    iput-object p1, p0, Lie/c;->a:Lie/c$a;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lie/c;->a:Lie/c$a;

    invoke-interface {p1}, Lie/c$a;->onDismiss()V

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
    const p3, 0x7f0d006c

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
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcSupportDialogBinding;->bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcSupportDialogBinding;

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
    iput-object p1, p0, Lie/c;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcSupportDialogBinding;

    .line 24
    .line 25
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcSupportDialogBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    iget-object p1, p0, Lie/c;->a:Lie/c$a;

    invoke-interface {p1}, Lie/c$a;->onDismiss()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lie/c;->b:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcSupportDialogBinding;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p2, Lzd/d;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p2, v0, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/FragmentNfcSupportDialogBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p1, "binding"

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1
.end method
