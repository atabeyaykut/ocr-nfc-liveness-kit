.class public final Lzh/f$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzh/f;->onFinish()V
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
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;)V
    .locals 0

    iput-object p1, p0, Lzh/f$a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;

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
    const-string v0, "dialog"

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
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->h:I

    .line 12
    .line 13
    iget-object p1, p0, Lzh/f$a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v0, Lzh/f;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lzh/f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->f:Lzh/f;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->s()V

    .line 29
    .line 30
    .line 31
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 32
    .line 33
    return-object p1
.end method
