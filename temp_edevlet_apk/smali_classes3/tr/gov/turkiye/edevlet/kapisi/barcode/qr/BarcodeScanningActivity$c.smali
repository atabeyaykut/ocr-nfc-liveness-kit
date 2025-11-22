.class public final Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$c;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->s(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageAnalysis;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;Landroidx/camera/core/ImageAnalysis;)V
    .locals 0

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$c;->a:Landroidx/camera/core/ImageAnalysis;

    const-string p2, "null cannot be cast to non-null type android.content.Context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 4

    const/16 v0, 0x2d

    const/16 v1, 0x87

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, p1, :cond_0

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_3

    :cond_1
    const/16 v0, 0xe1

    if-gt v1, p1, :cond_2

    if-ge p1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    if-gt v0, p1, :cond_4

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$c;->a:Landroidx/camera/core/ImageAnalysis;

    invoke-virtual {p1, v2}, Landroidx/camera/core/ImageAnalysis;->setTargetRotation(I)V

    return-void
.end method
