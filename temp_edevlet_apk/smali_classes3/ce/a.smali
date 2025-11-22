.class public final synthetic Lce/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lce/a;->a:I

    iput-object p2, p0, Lce/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lce/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lce/a;->a:I

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    iget-object v1, p0, Lce/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lce/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    .line 16
    .line 17
    const-string p1, "$customView"

    .line 18
    .line 19
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvAction()Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_1
    check-cast v2, Landroidx/camera/core/Camera;

    .line 33
    .line 34
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    .line 35
    .line 36
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->j:I

    .line 37
    .line 38
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-boolean v0, v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->d:Z

    .line 46
    .line 47
    xor-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    invoke-interface {p1, v0}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lm5/a;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_0
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 54
    .line 55
    check-cast v1, Ljava/util/List;

    .line 56
    .line 57
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 58
    .line 59
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "$editorChoice"

    .line 63
    .line 64
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    const-string v3, "mSearchFragmentBinding"

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 75
    .line 76
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;

    .line 92
    .line 93
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSearchBarBinding;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->H()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->G(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
