.class public final Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->s(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Integer;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$a;->a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$a;->a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iput-boolean v0, v1, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->f:Z

    .line 15
    .line 16
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->c:Landroid/widget/ImageView;

    .line 21
    .line 22
    const v0, 0x7f0800c3

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, v1, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->f:Z

    .line 28
    .line 29
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->c:Landroid/widget/ImageView;

    .line 34
    .line 35
    const v0, 0x7f0800c2

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 42
    .line 43
    return-object p1
.end method
