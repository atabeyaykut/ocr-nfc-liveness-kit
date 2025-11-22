.class public final Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmg/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->s(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

.field public final synthetic b:Landroidx/camera/core/ImageAnalysis;

.field public final synthetic c:Landroidx/camera/lifecycle/ProcessCameraProvider;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;Landroidx/camera/core/ImageAnalysis;Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;->a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;->b:Landroidx/camera/core/ImageAnalysis;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;->c:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;->a:Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;

    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->b:Lgf/b;

    if-eqz v1, :cond_12

    .line 2
    invoke-virtual {v1}, Lgf/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;->b:Landroidx/camera/core/ImageAnalysis;

    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->clearAnalyzer()V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;->c:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    :cond_0
    if-eqz p2, :cond_10

    .line 3
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    move-result-object p2

    .line 4
    iget-object p2, p2, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget p2, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->g:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "comingFrom"

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    goto/16 :goto_9

    .line 6
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget v2, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->g:I

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "content"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_9

    :cond_2
    iget p2, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->h:I

    const-string v1, ""

    const-string v4, "edevlet://karekod/"

    const-string v5, "operationType"

    const-string v6, "uk"

    const-string v7, "tid"

    if-eq p2, v2, :cond_d

    const/4 v2, 0x2

    const-string v8, "code"

    const-string v9, "uuid"

    const-string v10, "authCode"

    const-string v11, "tcknUuid"

    const-string v12, "pin"

    if-eq p2, v2, :cond_a

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    goto/16 :goto_9

    :cond_3
    const/4 p2, 0x0

    .line 7
    :try_start_0
    invoke-static {p1, v4, p2}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "barkod"

    invoke-static {p1, v2, p2}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_5

    const/4 p2, 0x1

    new-array p2, p2, [Ll9/g;

    const-string v1, "qrContent"

    .line 8
    new-instance v2, Ll9/g;

    invoke-direct {v2, v1, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v2, p2, p1

    .line 9
    new-instance v1, Landroidx/work/Data$Builder;

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    aget-object p1, p2, p1

    .line 10
    iget-object p2, p1, Ll9/g;->a:Ljava/lang/Object;

    .line 11
    check-cast p2, Ljava/lang/String;

    .line 12
    iget-object p1, p1, Ll9/g;->b:Ljava/lang/Object;

    .line 13
    invoke-virtual {v1, p2, p1}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    const-string p2, "dataBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyLoginWorker;

    invoke-direct {p2, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    const-string p2, "OneTimeWorkRequestBuilde\u2026tData(workerData).build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    goto/16 :goto_9

    :cond_5
    const/4 p2, 0x0

    .line 14
    invoke-static {p1, v4, p2}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 15
    invoke-static {p1, v4, v1}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :cond_6
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x1

    goto :goto_1

    :catch_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_9

    .line 17
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lyd/a;->a:Lyd/a$a;

    const-string v1, "STAGE 0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->e:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p1, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->g:I

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lyd/a;->a:Lyd/a$a;

    const-string v1, "STAGE 1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->e:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v12, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p1, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->g:I

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_9

    :cond_8
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    const-string p2, "STAGE 2"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->e:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    const-string p2, "STAGE 3"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const p1, 0x7f130026

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->u(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    sget-object p2, Lyd/a;->a:Lyd/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STAGE 4 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1, v1}, Landroidx/constraintlayout/core/a;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p2, p1, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_a
    const/4 p2, 0x0

    .line 20
    :try_start_3
    invoke-static {p1, v4, p2}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 21
    invoke-static {p1, v4, v1}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 22
    :cond_b
    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 p2, 0x1

    goto :goto_4

    :catch_2
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_c

    .line 23
    :try_start_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    move-result-object v2

    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->e:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v12, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->h:I

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p1, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->g:I

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    :cond_c
    const p1, 0x7f130026

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_d
    const/4 p2, 0x0

    .line 24
    invoke-static {p1, v4, p2}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 25
    invoke-static {p1, v4, v1}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 26
    :cond_e
    :try_start_6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/4 p2, 0x1

    goto :goto_5

    :catch_3
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_f

    .line 27
    :try_start_7
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->e:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->h:I

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p1, v0, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->g:I

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_6
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/scan/databinding/ActivityQrScanBinding;->e:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const p1, 0x7f130026

    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_7
    :try_start_9
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->u(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    :goto_8
    const p1, 0x7f130026

    :catch_5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->u(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    const p1, 0x7f130026

    .line 28
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;->u(Ljava/lang/String;)V

    goto :goto_9

    .line 30
    :cond_11
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "errorType"

    const-string v1, "0"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_9
    return-void

    :cond_12
    const-string p1, "mNetworkHelper"

    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
