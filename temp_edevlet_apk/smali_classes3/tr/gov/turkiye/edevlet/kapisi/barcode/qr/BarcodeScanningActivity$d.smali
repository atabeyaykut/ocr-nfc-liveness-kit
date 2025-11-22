.class public final Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->u(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lv/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$d;->a:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lv/e;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$d;->a:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    .line 12
    .line 13
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->a:Lm5/a;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->s(Landroidx/camera/lifecycle/ProcessCameraProvider;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    const-string p1, "cameraProviderFuture"

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    throw p1
.end method
