.class public Lcom/google/mlkit/vision/barcode/bundled/internal/ThickBarcodeScannerCreator;
.super Lq4/d;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq4/d;-><init>()V

    return-void
.end method


# virtual methods
.method public newBarcodeScanner(Lz3/b;Lq4/d0;)Lq4/b;
    .locals 1

    new-instance v0, Ly7/a;

    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p2}, Ly7/a;-><init>(Lq4/d0;)V

    return-object v0
.end method
