.class public final synthetic Landroidx/core/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Landroidx/core/app/a;->a:I

    iput-object p1, p0, Landroidx/core/app/a;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/core/app/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/app/a;->b:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Landroidx/core/widget/ContentLoadingProgressBar;

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/core/widget/ContentLoadingProgressBar;->a(Landroidx/core/widget/ContentLoadingProgressBar;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    check-cast v1, Landroid/app/Activity;

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->a(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_0
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    .line 22
    .line 23
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->j:I

    .line 24
    .line 25
    const-string v0, "this$0"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/barcode/camera/ViewFinderOverlay;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    const/16 v3, 0x50

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    mul-float v3, v3, v1

    .line 50
    .line 51
    const/16 v4, 0x64

    .line 52
    .line 53
    int-to-float v4, v4

    .line 54
    div-float/2addr v3, v4

    .line 55
    const/16 v5, 0x24

    .line 56
    .line 57
    int-to-float v5, v5

    .line 58
    mul-float v5, v5, v2

    .line 59
    .line 60
    div-float/2addr v5, v4

    .line 61
    const/4 v4, 0x2

    .line 62
    int-to-float v4, v4

    .line 63
    div-float/2addr v1, v4

    .line 64
    div-float/2addr v2, v4

    .line 65
    new-instance v6, Landroid/graphics/RectF;

    .line 66
    .line 67
    div-float/2addr v3, v4

    .line 68
    sub-float v7, v1, v3

    .line 69
    .line 70
    div-float/2addr v5, v4

    .line 71
    sub-float v4, v2, v5

    .line 72
    .line 73
    add-float/2addr v1, v3

    .line 74
    add-float/2addr v2, v5

    .line 75
    invoke-direct {v6, v7, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .line 77
    .line 78
    iput-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/camera/ViewFinderOverlay;->e:Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
