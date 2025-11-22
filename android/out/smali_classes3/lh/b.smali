.class public final Llh/b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;)V
    .locals 4

    iput-object p1, p0, Llh/b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 6

    .line 1
    iget-object v0, p0, Llh/b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

    .line 2
    .line 3
    iget v1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->k:I

    .line 4
    .line 5
    iget v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->j:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->k:I

    .line 13
    .line 14
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->b:Ll9/e;

    .line 15
    .line 16
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Llh/e;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Llh/f;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, v0, v2}, Llh/f;-><init>(Llh/e;Lp9/d;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lr0/z;->c:Lnc/a0;

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-static {v4, v2, v3, v1, v5}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 35
    .line 36
    .line 37
    new-instance v1, Llh/g;

    .line 38
    .line 39
    invoke-direct {v1, v0, v2}, Llh/g;-><init>(Llh/e;Lp9/d;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Llh/e;->i:Llh/a;

    .line 43
    .line 44
    invoke-static {v4, v0, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    const v2, 0x7f130145

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
