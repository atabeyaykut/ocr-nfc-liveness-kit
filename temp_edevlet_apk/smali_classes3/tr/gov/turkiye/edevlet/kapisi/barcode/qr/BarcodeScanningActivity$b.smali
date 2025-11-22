.class public final Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lae/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->s(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageAnalysis;

.field public final synthetic b:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;


# direct methods
.method public constructor <init>(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/lifecycle/ProcessCameraProvider;Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;->a:Landroidx/camera/core/ImageAnalysis;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;->b:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;->c:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;->b:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;->a:Landroidx/camera/core/ImageAnalysis;

    .line 4
    .line 5
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;->c:Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;

    .line 6
    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->clearAnalyzer()V

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean p2, v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->g:Z

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    new-instance p2, Lce/c;

    .line 22
    .line 23
    invoke-direct {p2, v1, v0, p1, v2}, Lce/c;-><init>(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/lifecycle/ProcessCameraProvider;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->e:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    new-array p2, p2, [Ll9/g;

    .line 39
    .line 40
    new-instance v1, Ll9/g;

    .line 41
    .line 42
    const-string v3, "qrContent"

    .line 43
    .line 44
    invoke-direct {v1, v3, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    aput-object v1, p2, v0

    .line 48
    .line 49
    new-instance p1, Landroidx/work/Data$Builder;

    .line 50
    .line 51
    invoke-direct {p1}, Landroidx/work/Data$Builder;-><init>()V

    .line 52
    .line 53
    .line 54
    aget-object p2, p2, v0

    .line 55
    .line 56
    iget-object v0, p2, Ll9/g;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    iget-object p2, p2, Ll9/g;->b:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "dataBuilder.build()"

    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-boolean p2, v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->f:Z

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 79
    .line 80
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyLoginWorker;

    .line 81
    .line 82
    invoke-direct {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 87
    .line 88
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;

    .line 89
    .line 90
    invoke-direct {p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 104
    .line 105
    const-string p2, "if (mFromLoginPage) {\n  \u2026                        }"

    .line 106
    .line 107
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    iget-boolean p2, v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->e:Z

    .line 119
    .line 120
    if-eqz p2, :cond_4

    .line 121
    .line 122
    new-instance p2, Lce/d;

    .line 123
    .line 124
    invoke-direct {p2, v1, v0, p1, v2}, Lce/d;-><init>(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/lifecycle/ProcessCameraProvider;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-virtual {v2, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    iget-boolean p1, v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->g:Z

    .line 132
    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    const p1, 0x7f130026

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->u(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_2
    return-void
.end method
