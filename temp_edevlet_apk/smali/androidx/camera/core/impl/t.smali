.class public final synthetic Landroidx/camera/core/impl/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/core/impl/t;->a:I

    iput-object p2, p0, Landroidx/camera/core/impl/t;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/t;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/impl/t;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lb7/c;

    .line 10
    .line 11
    sget-object v0, Lb7/c;->m:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {v1, v0}, Lb7/c;->c(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast v1, Lm5/a;

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/camera/core/impl/DeferrableSurfaces;->a(Lm5/a;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    .line 25
    .line 26
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->k:I

    .line 27
    .line 28
    const-string v0, "this$0"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/scan/camera/ViewFinderOverlay;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    const/16 v3, 0x50

    .line 50
    .line 51
    int-to-float v3, v3

    .line 52
    mul-float v3, v3, v1

    .line 53
    .line 54
    const/16 v4, 0x64

    .line 55
    .line 56
    int-to-float v4, v4

    .line 57
    div-float/2addr v3, v4

    .line 58
    const/16 v5, 0x24

    .line 59
    .line 60
    int-to-float v5, v5

    .line 61
    mul-float v5, v5, v2

    .line 62
    .line 63
    div-float/2addr v5, v4

    .line 64
    const/4 v4, 0x2

    .line 65
    int-to-float v4, v4

    .line 66
    div-float/2addr v1, v4

    .line 67
    div-float/2addr v2, v4

    .line 68
    new-instance v6, Landroid/graphics/RectF;

    .line 69
    .line 70
    div-float/2addr v3, v4

    .line 71
    sub-float v7, v1, v3

    .line 72
    .line 73
    div-float/2addr v5, v4

    .line 74
    sub-float v4, v2, v5

    .line 75
    .line 76
    add-float/2addr v1, v3

    .line 77
    add-float/2addr v2, v5

    .line 78
    invoke-direct {v6, v7, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    .line 80
    .line 81
    iput-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/camera/ViewFinderOverlay;->e:Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
