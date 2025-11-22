.class public final synthetic Lce/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageAnalysis;

.field public final synthetic b:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/lifecycle/ProcessCameraProvider;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce/d;->a:Landroidx/camera/core/ImageAnalysis;

    iput-object p2, p0, Lce/d;->b:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object p3, p0, Lce/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lce/d;->d:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "$imageAnalysis"

    .line 2
    .line 3
    iget-object v1, p0, Lce/d;->a:Landroidx/camera/core/ImageAnalysis;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "$result"

    .line 9
    .line 10
    iget-object v2, p0, Lce/d;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "this$0"

    .line 16
    .line 17
    iget-object v3, p0, Lce/d;->d:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    .line 18
    .line 19
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->clearAnalyzer()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lce/d;->b:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "result"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/4 v1, -0x1

    .line 43
    invoke-virtual {v3, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
