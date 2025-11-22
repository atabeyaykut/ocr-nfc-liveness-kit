.class public final synthetic Llg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->k:I

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    iget-object v1, p0, Llg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->c:Lm5/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->s(Landroidx/camera/lifecycle/ProcessCameraProvider;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v0, "cameraProviderFuture"

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    throw v0
.end method
