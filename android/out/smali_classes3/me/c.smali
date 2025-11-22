.class public final Lme/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

.field public final c:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLtr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lme/c;->a:Z

    iput-object p2, p0, Lme/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    iput-object p3, p0, Lme/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    return-void
.end method
